class User < ActiveRecord::Base

  enum user_type: {volunteer: 0, coordinator: 1}

  PASSWORD_LENGTH = 6
  REGEX_EMAIL = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

  validates :email, presence: true,
            uniqueness: {message: "Email already present"}

  validates :password, presence: true

  validates_format_of :email, :with => REGEX_EMAIL, :multiline => true,
                      :message => "Email is not correct"
  validates_length_of :mobile_number, :is => 10, :message => "Mobile no should be of 10 digits"



  # {:username => "abhay", :email => "abhinav@gmail.com", mobile_number => "3245678912", :password => "abhinav"}
	def update_user(params)
		usr_obj = self
		usr_obj.firstname = params[:firstname]
		usr_obj.lastname=params[:lastname]
		usr_obj.date_of_birth =params[:dob]
		usr_obj.email = params[:email]
		usr_obj.mobile_number = params[:mobile_number]
		usr_obj.address=params[:add]
		usr_obj.password = params[:password]
		usr_obj. postal_code=params[:ptc]
		usr_obj.save!
		#return usr_obj
	end

  def create_update_user(params)
    errors = {}
    self.email = params[:email]
    self.password = params[:password]
    self.mobile_number = params[:mobile_number]
    self.user_type = params[:user_type].to_i
    if !(self.valid?)
      errors = self.errors.messages.values.flatten
    else
      self.save!
    end
    return {err: errors.present? ? 'err1' : nil,  errors:  errors, usr_obj: self}
  end
end

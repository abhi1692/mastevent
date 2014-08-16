class User < ActiveRecord::Base

    # {:username => "abhay", :email => "abhinav@gmail.com", mobile_number => "3245678912", :password => "abhinav"}
	def create_update(params)
		usr_obj = self
		usr_obj.firstname = params[:firstname]
		usr_obj.email = params[:email]
		usr_obj.mobile_number = params[:mobile_number]
		usr_obj.password = params[:password]
		usr_obj.save!
		return usr_obj
	end

#	def more_update(params)		usr_obj = self
#		usr_obj.lastname = params[:lastname]
#		usr_obj.date_of_birth = params[:dob]
		
#		usr_obj.address = params[:add]
#		usr_obj.postal_code = params[:ptc]
#		usr_obj.save!
		
#	end
end

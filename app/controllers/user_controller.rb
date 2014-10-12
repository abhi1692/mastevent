class UserController < ApplicationController

	skip_before_action :verify_authenticity_token


	def index
  end

  def new

  end

  def signup
    usr = User.new
    result = usr.create_update_user(params)
    if result[:err].blank?
      @current_user = result[:usr_obj]
      redirect_to '/event'  # Success
    else
      @errors = result[:errors]
    end

  end

	def login
		usr = User.where(:email => params[:email], :password => params[:password]).first
		
				@events = []
			if usr.present?
					@events = Event.all

		else
			@not_success="Username and password not matched"
	end		

	end



	def success_user_event_info
    	user_event_info = UserEventInfo.new
    	
    	@user_event_info = user_event_info.update_user_event_info(params)
    end

	def more_signup
		user= User.where(:email => params[:email]).first
		@user= user.more_update(params)
	end

	def event_info
		#binding.pry
		user = User.new

		@user = user.update_user(params)
	end

	def user_event_info

		# create migration for user_events
		# create model for user_events
		# save in user_events
	end

end
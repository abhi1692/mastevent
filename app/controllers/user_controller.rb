class UserController < ApplicationController

	skip_before_action :verify_authenticity_token


	def index

	end	

	def login
		usr = User.where(:email => params[:email], :password => params[:password]).first
		if usr.present?
			@login_status = "success"
		else
			@login_status = "failure"	
		end		

	end

	def signup
	end

	def more_signup
		user= User.where(:email => params[:email]).first
		@user= user.more_update(params)
	end

	def event_info
		#binding.pry
		user = User.new
		@user = user.create_update(params)
	end

	def save_event_info
		# create migration for user_events
		# create model for user_events
		# save in user_events
	end

end
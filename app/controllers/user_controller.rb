class UserController < ApplicationController

	skip_before_action :verify_authenticity_token


	def index

	end	

	def login

	end

	def signup
		user = User.new
		@user = user.create_update(params)	


		
	end

	def more_signup
		user= User.where(:email => params[:email]).first
		@user= user.more_update(params)
	end

	def event_info
		user = User.new
		@user = user.create_update(params)
	end


end


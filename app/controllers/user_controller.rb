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
      set_user_auth_cookies(result)
      redirect_to '/event'  # Success
    else
      @errors = result[:errors]
    end

  end

  def login_form

  end

	def login
		usr_obj = User.where(:email => params[:email], :password => params[:password]).first
    if usr_obj.present?
      @current_user = usr_obj
      cookie_key = GlobalConst::USER_COOKIE
      set_user_auth_cookies(cookie_key => usr_obj.id)
      redirect_to '/event'  # Success
    else
      @errors = ["Email/Password doesn't match"]
    end
	end

  def logout
    @current_user = nil
    cookies.delete GlobalConst::USER_COOKIE, :domain => GlobalConst::COOKIE_DOMAIN

    redirect_to root_url
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

  def set_user_auth_cookies(params)
    cookie_key = GlobalConst::USER_COOKIE
    cookies[cookie_key] = {value: params[cookie_key],
                           domain: GlobalConst::COOKIE_DOMAIN} if params[cookie_key].present?

  end

end
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
      sent_res = UserMailer.welcome_email(usr).deliver
      Rails.logger.info("Welcome mailer sent result:#{sent_res.inspect}")
      redirect_to '/user/more_info'  # Success
    else
      @errors = result[:errors]
    end

  end

  def more_info_form

  end

  def save_more_info
    usr = User.where(:id => @current_user.id).first
    result = usr.save_more_info(params)
    if result[:err].blank?
      redirect_to '/event'  # Success
    else
      @errors = result[:errors] # Failure
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

  def set_user_auth_cookies(params)
    cookie_key = GlobalConst::USER_COOKIE
    cookies[cookie_key] = {value: params[cookie_key],
                           domain: GlobalConst::COOKIE_DOMAIN} if params[cookie_key].present?

  end

end
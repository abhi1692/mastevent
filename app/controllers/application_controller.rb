class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_current_user

  def http_basic_authenticate
      authenticate_or_request_with_http_basic("MastEvent Administration") do |user, pass|
        user == 'mast' && pass == 'abhinav'
      end
  end

  def get_current_user
    user_cookie_name = GlobalConst::USER_COOKIE

    @current_user = nil
    if cookies[user_cookie_name].present?
      values = Utility.break_cookie_value cookies[user_cookie_name]
      @current_user = User.where(:id => values[0]).first
      cookies[user_cookie_name] = nil if @current_user.blank?
    end
  end

end

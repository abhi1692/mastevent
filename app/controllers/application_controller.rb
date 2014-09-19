class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def http_basic_authenticate
      authenticate_or_request_with_http_basic("Hem Administration") do |user, pass|
        user == 'mast' && pass == 'abhinav'
      end
  end

end

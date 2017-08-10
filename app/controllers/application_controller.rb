class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login
  def require_login
    if session[:user_id]
      @logged_in_user = User.find(session[:user_id])
    else
      redirect_to '/'
    end
  end
end

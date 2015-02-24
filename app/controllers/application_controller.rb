class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :null_session
before_action :authenticate_user! 
def logout
    session[:user_id] = nil
    session[:album_id] = nil
  end
helper_method :current_album
  def current_album
    @current_album ||= (session[:album_id] ? find_album(session[:album_id]) : nil)
  end
end

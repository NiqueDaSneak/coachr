class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_coach
    @current_coach ||= Coach.find_by(id: session[:id]) if session[:id]
  end

  def current_client
    @current_client ||= Client.find_by(id: session[:id]) if session[:id]
  end

  def coach_logged_in?
    !!current_coach
  end

  def client_logged_in?
    !!current_client
  end

  helper_method :current_user, :logged_in?
end

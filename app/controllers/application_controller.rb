class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_coach
    @current_coach ||= Coach.find_by(id: session[:coach_id]) if session[:coach_id]
  end

  def current_client
    @current_client ||= Client.find_by(id: session[:client_id]) if session[:client_id]
  end

  def coach_logged_in?
    !!current_coach
  end

  def client_logged_in?
    !!current_client
  end

  def password_gen
    @pass = []
    sample_set = %w{1 2 3 4 5 6 7 8 9 0 Q W E R T Y U I O P}
    5.times do
      @pass << sample_set.sample
    end
    return @pass.join("")
  end

  helper_method :current_coach, :current_client, :coach_logged_in?, :client_logged_in?, :password_gen
end

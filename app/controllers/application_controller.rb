class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  layout Proc.new { |controller| controller.request.xhr? ? nil : 'application' }

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

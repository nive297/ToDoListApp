class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  layout Proc.new { |controller| controller.request.xhr? ? nil : 'application' }
  before_filter :is_signed_in?
  def is_signed_in?
   unless !current_user.nil?
      redirect_to log_in_path
   end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

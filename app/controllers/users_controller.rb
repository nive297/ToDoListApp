class UsersController < ApplicationController
  skip_before_filter :is_signed_in?
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to log_in_path, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def index
   @user = User.all
  end
end

class SessionsController < ApplicationController

  def new
    @logI = "active"
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
      redirect_to @user
      
    else
      flash.now[:danger] = "Invalid name/password combination"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end
end


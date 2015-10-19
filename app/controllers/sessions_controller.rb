class SessionsController < ApplicationController
  def new
  end

  def create
  	result = User.all.where(
      email: params[:email], password: params[:password]).first
    if result
      session[:user_id] = result.id
      redirect_to user_path result
    else
      flash[:alert] = "Invalid login/password. Please try again."
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/users"
  end

end

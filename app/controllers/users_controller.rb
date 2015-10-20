class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    result = User.create(params[:user])
      if result
        redirect_to user_path result
      else
      redirect_to "/users"
    end
  end

  # def profile
  #   @user = User.find_by(id: session[:user_id])
  # end

  def show
  		@user = User.find(params[:id])
  end 

  def edit
  	@user = User.find(params[:id])
  end

  def index
  	@users = User.all
  	@posts = Post.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
      redirect_to @user
  end

# 'strong_paramaters', this allows the following fields to pass through the create() method.

  def person_params
    params.require(:user).permit(:username, :fname, :email, :password, :bio)
  end

  def destroy
  	@gone = User.find(params[:id])
    @gone.destroy
  end

end

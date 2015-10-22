class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])
      if @user.save
        
      else
      flash[:notice] = "You messed up."
      render 'new'
    end
  end

  # def profile
  #   @user = User.find_by(id: session[:user_id])
  # end

  def show
  		@user = User.find_by(id: session[:user_id])
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

end

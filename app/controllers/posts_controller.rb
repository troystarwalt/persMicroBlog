class PostsController < ApplicationController
  def new
  	@post = Post.new
    # Post.create({:content => params[:user_content], :user_id => session[:user_id]})
  end

  def create
    results = Post.create({:content => params[:user_post], user_id: session[:user_id]})
  	if result
  		redirect_to posts_index_path result
  	else
      flash[:notice] = "Try again."
  		redirect_to('/post/new')
  	end
  end

  def index
  	@user = User.all
  	@post = Post.last(10)
  end
end

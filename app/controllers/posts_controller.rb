class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
    result = Post.create(params[:post])
  	if result
  		redirect_to posts_index_path result
  	else
      flash[:notice] = "Try again."
  		redirect_to('/posts/new')
  	end

  end

  def index
  	@user = User.all
  	@post = Post.last(10)
  	@havename = Post.joins(:user_id, :username)

  end
end

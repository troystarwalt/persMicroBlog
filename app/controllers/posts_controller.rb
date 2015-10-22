class PostsController < ApplicationController
  def index
  	@user = User.all
  	@post = Post.all
  end

  def new
  end

  def create
    puts "TROY>>>>>>>>> #{params.inspect}"
    puts "TROY>>>>>>>>> #{session[:user_id]}"
    @post = Post.create(
      :content => params[:content], 
      :user_id => session[:user_id]
    )
    redirect_to posts_path(@post)
  end
end
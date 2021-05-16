class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(content: params[:post][:content])
    @post.save
    redirect_to posts_path
  end
  def show
  
  end
  
  
  
end

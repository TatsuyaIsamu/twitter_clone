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
   @post = Post.find_by(id: params[:id])
  end
  def edit
   @post = Post.find_by(id: params[:id])
  end
  def update
    @post = Post.find_by(id: params[:id])
    @post.update(content: params[:post][:content])
    redirect_to posts_path
  end
end

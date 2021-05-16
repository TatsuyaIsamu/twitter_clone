class PostsController < ApplicationController
  before_action :catch_post, only: [:show, :edit, :update, :destroy] 
  def index
    @post = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(content: params[:post][:content])
    if params[:back]
      render :new
    else  
      if @post.save
      redirect_to posts_path
      else
      render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @post.update(content: params[:post][:content])
      redirect_to posts_path
    else
      render :new
    end
  end
  def destroy
    @post.destroy
    @post.save
    redirect_to posts_path
  end
  def confirm
    @post = Post.new(content: params[:post][:content])
    render :new if @post.invalid?
  end

  private
  def catch_post
  @post = Post.find_by(id: params[:id])
  end
end

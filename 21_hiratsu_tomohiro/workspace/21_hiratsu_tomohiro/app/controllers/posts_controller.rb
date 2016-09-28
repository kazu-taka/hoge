class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [ :show, :edit, :update, :destroy]
  def index
   @posts = Post.page(params[:page]).per(10)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.save
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to "/posts"
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :body, :category)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
end
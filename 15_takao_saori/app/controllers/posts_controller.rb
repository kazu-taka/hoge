class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [ :show, :edit, :update, :destroy]
  
  def index
    @q = Post.order(created_at: :desc).ransack(params[:q])
    @posts = @q.result.page(params[:page]).per(10)
    @new_posts = Post.order(created_at: :desc).limit(5)
  end

  def show
    # @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    
    if @post.valid?
       @post.save
       redirect_to posts_path
    else
      flash[:alert] = @post.errors.full_messages
      render :new
    end
    
  end

  def edit
    # @post = Post.find(params[:id])
  end

  def update
    # @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    # @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :body, :category)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
  
end

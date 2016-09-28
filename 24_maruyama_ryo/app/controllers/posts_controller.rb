class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  before_action :set_post, only: [ :show, :edit, :update, :destroy]
  def index
    @q = Post.order(created_at: :desc).ransack(params[:q])
    @posts = Post.order(created_at: :desc)
    @posts = @q.result.page(params[:page]).per(5)
    @new_posts = Post.order(created_at: :desc).limit(5)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
    redirect_to @post
   else
    render :new
    end
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to @post

  end

  def destroy
    @post.destroy
    redirect_to "/posts"
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :category)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
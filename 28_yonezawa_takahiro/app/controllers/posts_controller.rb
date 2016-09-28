class PostsController < ApplicationController
  before_action :authenticate_author!, except: [:index, :show]
  def index
    @q = Post.order(created_at: :desc).ransack(params[:q])
    @posts = @q.result(distinct: true)
    @new_posts = Post.order(created_at: :desc).limit(10)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) 
    @post.save 
    redirect_to "/posts/#{@post.id}" 
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    @post = Post.find(params[:id])
  end
  
  private

  def post_params
    params.require(:post).permit(:title, :body, :category)
  end
  
end

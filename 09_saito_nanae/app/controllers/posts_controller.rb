class PostsController < ApplicationController
  def index
    @q = Post.order(created_at: :desc).ransack(params[:q])
    @posts = @q.result(distinct: true)
    @posts = Post.page(params[:page]).per(3)
    @new_posts = Post.all
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
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts"
  end
  
  private

  def post_params 
    params.require(:post).permit(:title, :body, :category)
  end
  
end

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_url(@comment.post.id)
    else
      redirect_to post_url(@comment.post.id)
    end
  end

  def destroy
    @comment = Comment.find(params[:id]
    post_id = @comment.post.id
    @comment.destroy

    # さっき保存した comment_id をここで使う
    redirect_to post_url(post_id)
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
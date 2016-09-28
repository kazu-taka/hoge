class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_url(@comment.house.id)
    else
      redirect_to post_url(@comment.house.id)
    end
  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] ='コメントを投稿しました'
      redirect_to comment.board
    else
      flash[:comment] = comment
      flash[:error_messages] = comment.errors.full_messages
      redirect_back fallback_location: comment.board
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.delete
      flash[:notice] = 'コメントが削除されました'
      redirect_to comment.board
    else
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:board_id, :name, :comment)
  end

end

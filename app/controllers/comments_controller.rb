class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path)  
    else
      redirect_back(fallback_location: root_path)  
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content).merge(user_id: current_user.id, item_id: params[:item_id])
  end
  def destroy
    @comment = Comment.find_by(params[:id])
    @comment.destroy
    redirect_back(fallback_location: root_path)
  end
  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    unless @comment
      item_to root_url
    end
end
end

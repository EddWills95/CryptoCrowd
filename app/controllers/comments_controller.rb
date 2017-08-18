class CommentsController < ApplicationController 

  def create 
    @user = current_investor || current_trader 
    @comment = Comment.new(user_id: @user.id)
    @comment.update(create_params)
  end

  private
  def create_params
    params.require(:comment).permit(:body, :proposition_id)
  end
end
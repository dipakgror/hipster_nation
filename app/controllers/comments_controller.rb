class CommentsController < ApplicationController

  def create
    @comment = Comment.new
    @comment.photo_id = params[:photo_id]
    @comment.user_id = current_user.id if user_signed_in?
    if @comment.save 
      respond_to do |format|
        format.js
      end
    end
  end
  
end

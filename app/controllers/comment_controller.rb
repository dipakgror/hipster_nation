class CommentController < ApplicationController

  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(params[:comment])
    @photo = Photo.find_by_id(params[:photo_id])
    @comment.photo_id = @photo.id
    @comment.user_id = current_user.id if user_signed_in?
    if @comment.save 
      flash[:notice] = "Your comment has been saved"
      redirect_to root_path
    end
  end
  
end

class RatingsController < ApplicationController
  
  def create 
    @rating = Rating.new
    @rating.photo_id = params[:photo_id]
    @rating.rate = params[:score]
    @rating.user_id = current_user.id if user_signed_in?
    if @rating.save
      respond_to do |format|
        format.js
      end
    end
  end
  
end

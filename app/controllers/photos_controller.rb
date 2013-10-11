class PhotosController < ApplicationController
 
  def index
    @photos = Photo.all
  end
  
  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      redirect_to '/photos'
      flash[:notice] = "Image saved"
    else
      flash[:notice] = "Image is not save"
    end
  end

end

class ImagesController < ApplicationController 
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @image = Image.new(image_params)
    @image.gallery_id = @gallery.id   
    @image.save
    redirect_to gallery_path(@gallery) 
  end

  def new 
    @gallery = Gallery.find(params[:gallery_id])
    @image = Image.new 
  end 

  def image_params
    params.require(:image).permit(:name, :description, :url)
  end    
end 


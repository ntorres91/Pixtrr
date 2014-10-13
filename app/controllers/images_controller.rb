class ImagesController < ApplicationController 

	def create
	@gallery = Gallery.find(params[:gallery_id])
    @image = Image.find(params[:image_id])
	end

	def new 
	@gallery = Gallery.find(params[:gallery_id])
	@image = Image.new 
	end 

	def image_params
		params.require(:image).permit()

end 


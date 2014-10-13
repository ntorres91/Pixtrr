class GalleriesController < ApplicationController
	def index
		@galleries = Gallery.all
	end 

	def show
		@gallery = Gallery.find(params[:id])
	end 

	def destroy 
		Gallery.find(params[:id]).destroy
		redirect_to galleries_path
	end 


	def create
		@gallery = Gallery.create(gallery_params) 
		redirect_to gallery_path(@gallery)
	end 

	private

    def gallery_params 
      params.require(:gallery).permit(:name)
    end


end 
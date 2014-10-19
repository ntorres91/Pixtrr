class CommentsController < ApplicationController 



  def create 
    comment = Comment.new(comment_params) 
    comment.image_id = params[:image_id]
    comment.save! 
    gallery = comment.image.gallery 
    redirect_to gallery_path(gallery)
  end 



  def comment_params 
    params.require(:comment).permit(:body)
  end
  

end 
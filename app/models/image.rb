class Image < ActiveRecord::Base
  has_many  :comments 
  belongs_to :gallery 
end

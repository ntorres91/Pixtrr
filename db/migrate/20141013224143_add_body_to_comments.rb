class AddBodyToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
     t.text :body
     t.belongs_to :image 
    end 
  end
end

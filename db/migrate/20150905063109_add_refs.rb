class AddRefs < ActiveRecord::Migration
  def change
  	add_reference :users, :team,  index: true, foreign_key: true
  	add_reference :posts, :user,  index: true, foreign_key: true
  	add_reference :items, :post, index: true, foreign_key: true
  	add_reference :tags, :post,  index: true, foreign_key: true
  end
end

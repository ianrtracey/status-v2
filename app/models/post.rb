class Post < ActiveRecord::Base
	has_many :items
	belongs_to :post
end

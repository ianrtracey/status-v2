class Post < ActiveRecord::Base
	has_many :items
	accepts_nested_attributes_for :items, :allow_destroy => true
	
	belongs_to :user

end

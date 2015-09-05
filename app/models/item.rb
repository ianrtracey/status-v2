class Item < ActiveRecord::Base
	belongs_to :post

	validates :category, presence: true
	validates :content, presence: true
	validates :post_id, presence: true
end

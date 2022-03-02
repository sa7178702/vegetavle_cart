class Vegetable < ApplicationRecord
	belongs_to :cart_item
	has_many :orders
	has_one_attached :vegetable_img
	def self.search_by(search_term)
	where("LOWER(name) LIKE :search_term ",search_term: "%#{search_term.downcase}%")
	end
end

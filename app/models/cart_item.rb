class CartItem < ApplicationRecord
	has_many :vegetables
	belongs_to :cart
	has_one_attached :vegetable_img
end

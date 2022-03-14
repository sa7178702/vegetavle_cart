class CartItem < ApplicationRecord
	has_many :vegetables
	belongs_to :cart
	has_many_attached :vegetable_img
end

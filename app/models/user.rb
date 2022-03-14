class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :validatable, password_length: 6..128
  has_one_attached :user_img
  has_many :addresses
  has_one :cart
  has_many :cart_items
  has_many :orders

end

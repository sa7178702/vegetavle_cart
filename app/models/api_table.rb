class ApiTable < ApplicationRecord
	validates :name , presence: true
	validates :email , presence: true
	validates :password , presence: true
	validates :auth , presence: true
	
end

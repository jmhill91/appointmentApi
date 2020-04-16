class User < ApplicationRecord

	has_many :appointments
	has_many :carts 
	has_many :products, through: :carts

	has_secure_password
	validates :email, uniqueness: true
end

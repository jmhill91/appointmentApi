class User < ApplicationRecord

	has_many :appointments
	has_many :carts 
	has_many :products, through: :carts
end

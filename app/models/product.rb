class Product < ApplicationRecord

	belongs_to :business
	has_many :carts 
	has_many :products, through: :carts

end

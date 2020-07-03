class Business < ApplicationRecord

  belongs_to :business_type
  has_many :employees
  has_many :products
  has_many :services
  
end

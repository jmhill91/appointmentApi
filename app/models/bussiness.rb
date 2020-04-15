class Bussiness < ApplicationRecord

  belongs_to :bussiness_type
  has_many :employees
  has_many :products
  has_many :services
  
end

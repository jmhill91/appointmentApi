class Service < ApplicationRecord
  
  belongs_to :business
  has_many :appointments
  has_many :employees, through: :appointments
  has_many :users, through: :appointments
end

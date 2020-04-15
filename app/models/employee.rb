class Employee < ApplicationRecord

  belongs_to :business
  has_many :appointments 
  has_many :users, through: :appointments
  has_many :services, through: :appointments
end

class Employee < ApplicationRecord

  belongs_to :business
  has_many :appointments 
  has_many :users, through: :appointments
  has_many :services, through: :appointments

  has_secure_password
  validates :email, uniqueness: true
end

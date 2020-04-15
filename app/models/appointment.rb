class Appointment < ApplicationRecord

  belongs_to :user
  belongs_to :employee
  belongs_to :service
  
end

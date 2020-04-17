class AppointmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :time_and_date
  belongs_to :user
  belongs_to :employee
  belongs_to :service
end

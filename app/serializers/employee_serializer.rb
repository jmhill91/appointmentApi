class EmployeeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :phone, :password_digest, :appointments
end

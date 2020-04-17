class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :phone, :address, :carts, :appointments
end

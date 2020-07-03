class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price
  belongs_to :business
end

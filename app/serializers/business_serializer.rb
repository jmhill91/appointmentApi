class BusinessSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :phone 
  belongs_to :business_type
end

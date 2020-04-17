class BussinessSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :phone 
  belongs_to :bussiness_type
end

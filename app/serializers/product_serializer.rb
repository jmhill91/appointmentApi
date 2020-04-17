class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price 
  belongs_to :bussiness
end

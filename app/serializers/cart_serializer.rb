class CartSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
  belongs_to :user
  belongs_to :product
end

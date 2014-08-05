class Product < ActiveRecord::Base
  belongs_to :sale_material, inverse_of: :products
  belongs_to :material, inverse_of: :products
end

class SaleMaterial < ActiveRecord::Base
  has_many :products, :dependent => :destroy, inverse_of: :sale_material
  accepts_nested_attributes_for :products, :allow_destroy => true
end

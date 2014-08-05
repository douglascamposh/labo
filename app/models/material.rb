class Material < ActiveRecord::Base
	has_many :products, inverse_of: :material
end

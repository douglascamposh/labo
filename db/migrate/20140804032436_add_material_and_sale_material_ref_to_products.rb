class AddMaterialAndSaleMaterialRefToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :material, index: true
    add_reference :products, :sale_material, index: true
  end
end

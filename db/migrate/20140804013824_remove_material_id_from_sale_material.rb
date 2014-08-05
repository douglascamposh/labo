class RemoveMaterialIdFromSaleMaterial < ActiveRecord::Migration
  def change
    remove_reference :sale_materials, :material, index: true
  end
end

class RemoveMaterialIdAndSaleMaterialIdFromProduct < ActiveRecord::Migration
  def change
    remove_reference :products, :Material, index: true
    remove_reference :products, :SaleMaterial, index: true
  end
end

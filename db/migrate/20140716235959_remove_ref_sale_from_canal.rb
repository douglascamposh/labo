class RemoveRefSaleFromCanal < ActiveRecord::Migration
  def change
    remove_reference :canals, :sale, index: true
  end
end

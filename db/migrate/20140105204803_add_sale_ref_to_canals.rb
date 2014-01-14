class AddSaleRefToCanals < ActiveRecord::Migration
  def change
    add_reference :canals, :sale, index: true
  end
end

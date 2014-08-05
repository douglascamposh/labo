class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :descripcion
      t.integer :cantidad
      t.float :precio_compra
      t.float :precio_venta

      t.timestamps
    end
  end
end

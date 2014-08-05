class CreateSaleMaterials < ActiveRecord::Migration
  def change
    create_table :sale_materials do |t|
      t.string :nombre
      t.float :acuenta
      t.float :saldo
      t.float :total
      t.integer :cantidad
      t.references :material, index: true

      t.timestamps
    end
  end
end

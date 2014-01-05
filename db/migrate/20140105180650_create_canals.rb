class CreateCanals < ActiveRecord::Migration
  def change
    create_table :canals do |t|
      t.string :tamanio
      t.string :tipo
      t.integer :cantidad
      t.float :precio
      t.float :preciof

      t.timestamps
    end
  end
end

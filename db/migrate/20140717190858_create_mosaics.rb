class CreateMosaics < ActiveRecord::Migration
  def change
    create_table :mosaics do |t|
      t.string :tamanio
      t.float :precio
      t.float :costo

      t.timestamps
    end
  end
end

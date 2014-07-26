class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.string :modelo
      t.string :tamanio
      t.float :precio
      t.float :costo

      t.timestamps
    end
  end
end

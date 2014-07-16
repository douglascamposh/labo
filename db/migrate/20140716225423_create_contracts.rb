class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :nombre
      t.string :telefono
      t.string :celular
      t.string :acontecimiento
      t.datetime :fecha
      t.text :direccion
      t.text :observacion
      t.boolean :video
      t.integer :fotos
      t.string :mosaico
      t.string :acuenta
      t.string :saldo
      t.string :total
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

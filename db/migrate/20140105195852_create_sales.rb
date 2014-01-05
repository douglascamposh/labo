class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :observacion
      t.integer :cantidad
      t.boolean :aficionado

      t.timestamps
    end
  end
end

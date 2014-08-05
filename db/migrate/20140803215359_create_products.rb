class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :SaleMaterial, index: true
      t.references :Material, index: true
      t.integer :cantidad

      t.timestamps
    end
  end
end

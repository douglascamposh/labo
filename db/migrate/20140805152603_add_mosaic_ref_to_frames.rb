class AddMosaicRefToFrames < ActiveRecord::Migration
  def change
    add_reference :frames, :mosaic, index: true
    remove_column :frames, :tamanio, :string
  end
end

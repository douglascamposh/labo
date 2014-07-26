class AddMosaicAndFrameRefToContract < ActiveRecord::Migration
  def change
    add_reference :contracts, :mosaic, index: true
    add_reference :contracts, :frame, index: true
  end
end

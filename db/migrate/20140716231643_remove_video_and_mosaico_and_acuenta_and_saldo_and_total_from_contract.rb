class RemoveVideoAndMosaicoAndAcuentaAndSaldoAndTotalFromContract < ActiveRecord::Migration
  def change
    remove_column :contracts, :video, :boolean
    remove_column :contracts, :mosaico, :string
    remove_column :contracts, :acuenta, :string
    remove_column :contracts, :saldo, :string
    remove_column :contracts, :total, :string
  end
end

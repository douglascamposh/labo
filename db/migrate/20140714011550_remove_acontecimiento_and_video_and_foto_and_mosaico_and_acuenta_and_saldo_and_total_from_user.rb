class RemoveAcontecimientoAndVideoAndFotoAndMosaicoAndAcuentaAndSaldoAndTotalFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :acontecimiento, :string
    remove_column :users, :video, :integer
    remove_column :users, :foto, :integer
    remove_column :users, :mosaico, :integer
    remove_column :users, :acuenta, :integer
    remove_column :users, :saldo, :integer
    remove_column :users, :total, :integer
  end
end

class AddVideoAndAcuentaAndSaldoAndTotalAndUserToContract < ActiveRecord::Migration
  def change
    add_column :contracts, :video, :integer
    add_column :contracts, :acuenta, :integer
    add_column :contracts, :saldo, :integer
    add_column :contracts, :total, :integer
    add_reference :contracts, :user, index: true
  end
end

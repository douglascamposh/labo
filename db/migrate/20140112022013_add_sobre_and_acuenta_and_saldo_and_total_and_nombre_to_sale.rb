class AddSobreAndAcuentaAndSaldoAndTotalAndNombreToSale < ActiveRecord::Migration
  def change
    add_column :sales, :sobre, :int
    add_column :sales, :acuenta, :float
    add_column :sales, :saldo, :float
    add_column :sales, :total, :float
    add_column :sales, :nombre, :string
  end
end

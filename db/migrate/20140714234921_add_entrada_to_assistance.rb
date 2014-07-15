class AddEntradaToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :entrada, :date
  end
end

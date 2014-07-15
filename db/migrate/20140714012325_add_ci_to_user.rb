class AddCiToUser < ActiveRecord::Migration
  def change
    add_column :users, :ci, :integer
  end
end

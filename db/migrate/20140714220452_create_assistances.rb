class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.references :user, index: true
      t.datetime :salida

      t.timestamps
    end
  end
end

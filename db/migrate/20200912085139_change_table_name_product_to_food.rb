class ChangeTableNameProductToFood < ActiveRecord::Migration[6.0]
  def change
    rename_table :products, :foods
  end
end

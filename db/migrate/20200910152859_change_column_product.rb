class ChangeColumnProduct < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :category, :name
  end
end

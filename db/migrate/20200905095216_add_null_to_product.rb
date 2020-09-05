class AddNullToProduct < ActiveRecord::Migration[6.0]
  def change
    change_column_null :products, :flavor, true
    change_column_null :products, :topping, true
    change_column_null :products, :crust, true
  end
end

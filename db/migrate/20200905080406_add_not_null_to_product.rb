class AddNotNullToProduct < ActiveRecord::Migration[6.0]
  def change
    change_column_null :products, :category, false
    change_column_null :products, :flavor, false
    change_column_null :products, :size, false 
    change_column_null :products, :topping, false
    change_column_null :products, :crust, false
  end
end

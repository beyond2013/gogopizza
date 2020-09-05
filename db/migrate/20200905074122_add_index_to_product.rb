class AddIndexToProduct < ActiveRecord::Migration[6.0]
  def change
    add_index :products, [:category, :flavor, :size, :topping, :crust],
      name: 'unique_category_flavor_size_topping_crust',
      unique: true
  end
end

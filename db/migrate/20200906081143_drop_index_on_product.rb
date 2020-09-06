class DropIndexOnProduct < ActiveRecord::Migration[6.0]
  def change
    remove_index :products, name: 'unique_category_flavor_size_topping_crust'
  end
end

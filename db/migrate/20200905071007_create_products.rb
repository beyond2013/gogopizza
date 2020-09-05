class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :flavor
      t.string :size
      t.string :topping
      t.string :crust
      t.float :price

      t.timestamps
    end
  end
end

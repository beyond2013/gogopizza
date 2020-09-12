class AddCuisineToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :cuisine, null: false, foreign_key: true
  end
end

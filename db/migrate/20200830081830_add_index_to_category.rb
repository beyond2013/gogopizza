class AddIndexToCategory < ActiveRecord::Migration[6.0]
  def change
    #add_column :categories, :description, :string
    add_index :categories, :description, unique: true
  end
end

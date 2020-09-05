class Product < ApplicationRecord
  validates :category,  :size, :price, presence: true
  validates :category, :flavor, :size, :topping, :crust,  uniqueness: true
end

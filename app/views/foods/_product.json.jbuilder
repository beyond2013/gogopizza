json.extract! product, :id, :category, :flavor, :size, :topping, :crust, :price, :created_at, :updated_at
json.url product_url(product, format: :json)

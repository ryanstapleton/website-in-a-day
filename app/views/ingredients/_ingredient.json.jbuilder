json.extract! ingredient, :id, :title, :price, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)

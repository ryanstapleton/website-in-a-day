json.extract! sandwich, :id, :title, :description, :main_image, :price, :created_at, :updated_at
json.url sandwich_url(sandwich, format: :json)

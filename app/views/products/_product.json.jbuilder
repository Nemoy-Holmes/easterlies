json.extract! product, :id, :title, :content, :image_name, :created_at, :updated_at
json.url product_url(product, format: :json)

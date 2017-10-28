json.extract! card, :id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url card_url(card, format: :json)

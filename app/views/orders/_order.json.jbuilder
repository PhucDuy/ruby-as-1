json.extract! order, :id, :name, :phone, :address, :email, :created_at, :updated_at
json.url order_url(order, format: :json)

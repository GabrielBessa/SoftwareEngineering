json.extract! address, :id, :street, :neighborhood, :number, :created_at, :updated_at
json.url address_url(address, format: :json)

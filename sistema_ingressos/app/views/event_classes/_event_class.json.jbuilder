json.extract! event_class, :id, :description, :created_at, :updated_at
json.url event_class_url(event_class, format: :json)

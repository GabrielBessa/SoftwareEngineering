json.extract! room, :id, :number, :full, :event_center, :created_at, :updated_at
json.url room_url(room, format: :json)

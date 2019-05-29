json.extract! event, :id, :name, :age, :event_type, :begin_date, :end_date, :admin, :created_at, :updated_at
json.url event_url(event, format: :json)

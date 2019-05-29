json.extract! ticket, :id, :ticket_type, :room_and_presentation, :person, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

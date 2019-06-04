class Event < ApplicationRecord
  
  has_one :presentation, through: :presentation_room
  has_one :event_class
end



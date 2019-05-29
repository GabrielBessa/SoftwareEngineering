class Event < ApplicationRecord
  has_many :presentation, through: :presentation_room
  has_one :event_class
  has_one :admin

end

class Room < ApplicationRecord
  belongs_to :event_center
  has_many :presentation_room
end

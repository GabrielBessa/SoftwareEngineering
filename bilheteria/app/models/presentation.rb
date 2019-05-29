class Presentation < ApplicationRecord
  has_one :presentation_room
  belongs_to :event
end

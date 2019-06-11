class Presentation < ApplicationRecord
  has_many :presentation_room
  belongs_to :event
end

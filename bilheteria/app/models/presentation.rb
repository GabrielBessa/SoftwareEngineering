class Presentation < ApplicationRecord
  has_many :event, through: :presentation_room
  belongs_to :event
end

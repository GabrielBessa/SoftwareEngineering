class Room < ApplicationRecord
  validates :number, presence: true
  validates :crowded, presence: false

  belongs_to :event_center, required: false
  has_many :presentation_room
end

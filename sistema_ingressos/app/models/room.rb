class Room < ApplicationRecord
  validates :number, presence: true
  validates :crowded, presence: true 

  belongs_to :event_center
  has_many :presentation_room
end

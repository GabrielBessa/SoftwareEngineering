class Presentation < ApplicationRecord
  validates :date, presence: true
  validates :hour, presence: true

  has_many :presentation_room
  belongs_to :event, required: false
end

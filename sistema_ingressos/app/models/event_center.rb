class EventCenter < ApplicationRecord
  validates :name, presence: true

  belongs_to :address, required: false
  has_many :room
end

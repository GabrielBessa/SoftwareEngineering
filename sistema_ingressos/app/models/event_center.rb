class EventCenter < ApplicationRecord
  validates :name, presence: true

  belongs_to :address
  has_many :room
end

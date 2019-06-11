class EventCenter < ApplicationRecord
  belongs_to :address
  has_many :room
end

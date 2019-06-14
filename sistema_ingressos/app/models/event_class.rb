class EventClass < ApplicationRecord
  validates :description, presence: true  

  has_many :event
end

class PresentationRoom < ApplicationRecord
  belongs_to :room
  has_one :presentation
  has_many :ticket
end

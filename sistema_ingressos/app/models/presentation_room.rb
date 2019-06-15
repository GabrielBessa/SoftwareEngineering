class PresentationRoom < ApplicationRecord
  belongs_to :room
  belongs_to :presentation
  has_many :ticket
end

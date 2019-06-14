class PresentationRoom < ApplicationRecord
  belongs_to :room, required: false
  belongs_to :presentation, required: false
  has_many :ticket
end

class AgeGroup < ApplicationRecord
  validates :age, presence: true
  

  has_many :event
end

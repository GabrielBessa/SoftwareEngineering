class Address < ApplicationRecord
  validates :street, presence: true
  validates :neighborhood, presence: true
  validates :number, presence: true
  
  belongs_to :city, required: false
  has_many :event_center
end

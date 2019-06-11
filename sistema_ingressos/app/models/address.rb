class Address < ApplicationRecord
  belongs_to :city
  has_many :event_center
end

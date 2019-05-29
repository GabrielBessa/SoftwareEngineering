class City < ApplicationRecord
  has_many :address
  belongs_to :state
end

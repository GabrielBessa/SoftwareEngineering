class State < ApplicationRecord
  has_many :city
  belongs_to :country
end

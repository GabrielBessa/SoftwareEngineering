class Country < ApplicationRecord
  has_many :state
  # has_one :code # ver se n eh phone ou se eh phone_code msm na model dps
end

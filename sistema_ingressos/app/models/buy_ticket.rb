class BuyTicket < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  has_one :payment
end

class BuyTicket < ApplicationRecord
  validates :bought_moment, presence: true
  validates :value, presence: true
  
  
  belongs_to :user, required: false
  belongs_to :ticket, required: false
  has_one :payment
end

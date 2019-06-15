class TicketType < ApplicationRecord
  validates :description, presence: true
  validates :base_price, presence: true
  
  has_many :ticket
end

class User < ApplicationRecord
  has_many :event
  has_many :buy_ticket
  has_one :ticket
end

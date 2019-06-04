class User < ApplicationRecord
  has_many :event
  has_one :ticket
  has_many :buy_ticket  
  
end

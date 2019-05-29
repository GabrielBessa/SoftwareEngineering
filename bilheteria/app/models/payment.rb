class Payment < ApplicationRecord
  has_one :buy_ticket
  has_many :payment_method
end

class PaymentMethod < ApplicationRecord
  validates :method, presence: true
  

  has_many :payment
end

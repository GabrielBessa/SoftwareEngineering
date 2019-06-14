class Payment < ApplicationRecord
  validates :payment_moment, presence: true
  validates :paid_amount, presence: true
  validates :change_money, presence: true

  belongs_to :payment_method, required: false
end

require 'rails_helper'
require 'date'
RSpec.describe Payment, type: :model do
  it 'is valid with valid attributes' do
    pay = Payment.new
    pay.payment_moment = Date.parse("01-01-2010")
    pay.paid_amount = 10.10
    pay.change_money = 0.05
  end

  it 'is not valid with invalid attributes' do
    pay = Payment.new
    pay.payment_moment = nil
    pay.paid_amount = nil
    pay.change_money = nil

    expect(pay).not_to be_valid
  end
end

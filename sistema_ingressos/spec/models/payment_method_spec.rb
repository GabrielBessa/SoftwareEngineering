require 'rails_helper'

RSpec.describe PaymentMethod, type: :model do
  it 'is valid with valid attributes' do
    pay = PaymentMethod.new
    pay.method = "cartao de credito"
  end

  it 'is not valid with invalid attributes' do
    pay = PaymentMethod.new
    pay.method = nil

    expect(pay).not_to be_valid
  end
end

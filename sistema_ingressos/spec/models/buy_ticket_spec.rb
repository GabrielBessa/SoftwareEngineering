require 'rails_helper'
require 'date'

RSpec.describe BuyTicket, type: :model do
  it 'is valid with valid attributes' do
    ticket = BuyTicket.new
    ticket.bought_moment = Date.parse("01-01-2010")
    ticket.value = 30.04
  end

  it 'is not valid with invalid attributes' do
    ticket = BuyTicket.new
    ticket.bought_moment = nil
    ticket.value = nil
    expect(ticket).not_to be_valid
  end
end

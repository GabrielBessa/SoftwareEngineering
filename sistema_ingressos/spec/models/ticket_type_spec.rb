require 'rails_helper'

RSpec.describe TicketType, type: :model do
  it 'is valid with valid attributes' do
    ticket = TicketType.new 
    ticket.description = "lalalalalala"
    ticket.base_price = 10.2
  end

  it 'is not valid with invalid attributes' do
    ticket = TicketType.new
    ticket.description = nil
    ticket.base_price = nil

    expect(ticket).not_to be_valid
  end
end

require 'rails_helper'

RSpec.describe "buy_tickets/edit", type: :view do
  before(:each) do
    @buy_ticket = assign(:buy_ticket, BuyTicket.create!(
      :ticket => 1,
      :buyer => 1,
      :value => 1.5
    ))
  end

  it "renders the edit buy_ticket form" do
    render

    assert_select "form[action=?][method=?]", buy_ticket_path(@buy_ticket), "post" do

      assert_select "input[name=?]", "buy_ticket[ticket]"

      assert_select "input[name=?]", "buy_ticket[buyer]"

      assert_select "input[name=?]", "buy_ticket[value]"
    end
  end
end

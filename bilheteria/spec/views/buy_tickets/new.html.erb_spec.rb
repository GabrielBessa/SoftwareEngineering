require 'rails_helper'

RSpec.describe "buy_tickets/new", type: :view do
  before(:each) do
    assign(:buy_ticket, BuyTicket.new(
      :ticket => 1,
      :buyer => 1,
      :value => 1.5
    ))
  end

  it "renders new buy_ticket form" do
    render

    assert_select "form[action=?][method=?]", buy_tickets_path, "post" do

      assert_select "input[name=?]", "buy_ticket[ticket]"

      assert_select "input[name=?]", "buy_ticket[buyer]"

      assert_select "input[name=?]", "buy_ticket[value]"
    end
  end
end

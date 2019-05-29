require 'rails_helper'

RSpec.describe "buy_tickets/index", type: :view do
  before(:each) do
    assign(:buy_tickets, [
      BuyTicket.create!(
        :ticket => 2,
        :buyer => 3,
        :value => 4.5
      ),
      BuyTicket.create!(
        :ticket => 2,
        :buyer => 3,
        :value => 4.5
      )
    ])
  end

  it "renders a list of buy_tickets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
  end
end

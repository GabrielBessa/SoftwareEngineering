require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :ticket_type => 2,
        :room_and_presentation => 3,
        :person => 4
      ),
      Ticket.create!(
        :ticket_type => 2,
        :room_and_presentation => 3,
        :person => 4
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :ticket_type => 1,
      :room_and_presentation => 1,
      :person => 1
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input[name=?]", "ticket[ticket_type]"

      assert_select "input[name=?]", "ticket[room_and_presentation]"

      assert_select "input[name=?]", "ticket[person]"
    end
  end
end

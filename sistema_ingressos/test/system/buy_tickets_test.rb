require "application_system_test_case"

class BuyTicketsTest < ApplicationSystemTestCase
  setup do
    @buy_ticket = buy_tickets(:one)
  end

  test "visiting the index" do
    visit buy_tickets_url
    assert_selector "h1", text: "Buy Tickets"
  end

  test "creating a Buy ticket" do
    visit buy_tickets_url
    click_on "New Buy Ticket"

    fill_in "Bought moment", with: @buy_ticket.bought_moment
    fill_in "Value", with: @buy_ticket.value
    click_on "Create Buy ticket"

    assert_text "Buy ticket was successfully created"
    click_on "Back"
  end

  test "updating a Buy ticket" do
    visit buy_tickets_url
    click_on "Edit", match: :first

    fill_in "Bought moment", with: @buy_ticket.bought_moment
    fill_in "Value", with: @buy_ticket.value
    click_on "Update Buy ticket"

    assert_text "Buy ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Buy ticket" do
    visit buy_tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buy ticket was successfully destroyed"
  end
end

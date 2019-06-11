require 'test_helper'

class BuyTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buy_ticket = buy_tickets(:one)
  end

  test "should get index" do
    get buy_tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_buy_ticket_url
    assert_response :success
  end

  test "should create buy_ticket" do
    assert_difference('BuyTicket.count') do
      post buy_tickets_url, params: { buy_ticket: { bought_moment: @buy_ticket.bought_moment, value: @buy_ticket.value } }
    end

    assert_redirected_to buy_ticket_url(BuyTicket.last)
  end

  test "should show buy_ticket" do
    get buy_ticket_url(@buy_ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_buy_ticket_url(@buy_ticket)
    assert_response :success
  end

  test "should update buy_ticket" do
    patch buy_ticket_url(@buy_ticket), params: { buy_ticket: { bought_moment: @buy_ticket.bought_moment, value: @buy_ticket.value } }
    assert_redirected_to buy_ticket_url(@buy_ticket)
  end

  test "should destroy buy_ticket" do
    assert_difference('BuyTicket.count', -1) do
      delete buy_ticket_url(@buy_ticket)
    end

    assert_redirected_to buy_tickets_url
  end
end

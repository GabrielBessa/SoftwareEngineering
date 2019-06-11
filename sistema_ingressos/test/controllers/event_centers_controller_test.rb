require 'test_helper'

class EventCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_center = event_centers(:one)
  end

  test "should get index" do
    get event_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_event_center_url
    assert_response :success
  end

  test "should create event_center" do
    assert_difference('EventCenter.count') do
      post event_centers_url, params: { event_center: { name: @event_center.name } }
    end

    assert_redirected_to event_center_url(EventCenter.last)
  end

  test "should show event_center" do
    get event_center_url(@event_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_center_url(@event_center)
    assert_response :success
  end

  test "should update event_center" do
    patch event_center_url(@event_center), params: { event_center: { name: @event_center.name } }
    assert_redirected_to event_center_url(@event_center)
  end

  test "should destroy event_center" do
    assert_difference('EventCenter.count', -1) do
      delete event_center_url(@event_center)
    end

    assert_redirected_to event_centers_url
  end
end

require 'test_helper'

class EventClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_class = event_classes(:one)
  end

  test "should get index" do
    get event_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_event_class_url
    assert_response :success
  end

  test "should create event_class" do
    assert_difference('EventClass.count') do
      post event_classes_url, params: { event_class: { description: @event_class.description } }
    end

    assert_redirected_to event_class_url(EventClass.last)
  end

  test "should show event_class" do
    get event_class_url(@event_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_class_url(@event_class)
    assert_response :success
  end

  test "should update event_class" do
    patch event_class_url(@event_class), params: { event_class: { description: @event_class.description } }
    assert_redirected_to event_class_url(@event_class)
  end

  test "should destroy event_class" do
    assert_difference('EventClass.count', -1) do
      delete event_class_url(@event_class)
    end

    assert_redirected_to event_classes_url
  end
end

require 'test_helper'

class PresentationRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presentation_room = presentation_rooms(:one)
  end

  test "should get index" do
    get presentation_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_presentation_room_url
    assert_response :success
  end

  test "should create presentation_room" do
    assert_difference('PresentationRoom.count') do
      post presentation_rooms_url, params: { presentation_room: {  } }
    end

    assert_redirected_to presentation_room_url(PresentationRoom.last)
  end

  test "should show presentation_room" do
    get presentation_room_url(@presentation_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_presentation_room_url(@presentation_room)
    assert_response :success
  end

  test "should update presentation_room" do
    patch presentation_room_url(@presentation_room), params: { presentation_room: {  } }
    assert_redirected_to presentation_room_url(@presentation_room)
  end

  test "should destroy presentation_room" do
    assert_difference('PresentationRoom.count', -1) do
      delete presentation_room_url(@presentation_room)
    end

    assert_redirected_to presentation_rooms_url
  end
end

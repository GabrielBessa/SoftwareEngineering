require "application_system_test_case"

class PresentationRoomsTest < ApplicationSystemTestCase
  setup do
    @presentation_room = presentation_rooms(:one)
  end

  test "visiting the index" do
    visit presentation_rooms_url
    assert_selector "h1", text: "Presentation Rooms"
  end

  test "creating a Presentation room" do
    visit presentation_rooms_url
    click_on "New Presentation Room"

    click_on "Create Presentation room"

    assert_text "Presentation room was successfully created"
    click_on "Back"
  end

  test "updating a Presentation room" do
    visit presentation_rooms_url
    click_on "Edit", match: :first

    click_on "Update Presentation room"

    assert_text "Presentation room was successfully updated"
    click_on "Back"
  end

  test "destroying a Presentation room" do
    visit presentation_rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presentation room was successfully destroyed"
  end
end

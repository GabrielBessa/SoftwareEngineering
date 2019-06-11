require "application_system_test_case"

class EventCentersTest < ApplicationSystemTestCase
  setup do
    @event_center = event_centers(:one)
  end

  test "visiting the index" do
    visit event_centers_url
    assert_selector "h1", text: "Event Centers"
  end

  test "creating a Event center" do
    visit event_centers_url
    click_on "New Event Center"

    fill_in "Name", with: @event_center.name
    click_on "Create Event center"

    assert_text "Event center was successfully created"
    click_on "Back"
  end

  test "updating a Event center" do
    visit event_centers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @event_center.name
    click_on "Update Event center"

    assert_text "Event center was successfully updated"
    click_on "Back"
  end

  test "destroying a Event center" do
    visit event_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event center was successfully destroyed"
  end
end

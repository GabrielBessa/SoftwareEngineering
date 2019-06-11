require "application_system_test_case"

class EventClassesTest < ApplicationSystemTestCase
  setup do
    @event_class = event_classes(:one)
  end

  test "visiting the index" do
    visit event_classes_url
    assert_selector "h1", text: "Event Classes"
  end

  test "creating a Event class" do
    visit event_classes_url
    click_on "New Event Class"

    fill_in "Description", with: @event_class.description
    click_on "Create Event class"

    assert_text "Event class was successfully created"
    click_on "Back"
  end

  test "updating a Event class" do
    visit event_classes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @event_class.description
    click_on "Update Event class"

    assert_text "Event class was successfully updated"
    click_on "Back"
  end

  test "destroying a Event class" do
    visit event_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event class was successfully destroyed"
  end
end

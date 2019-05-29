require 'rails_helper'

RSpec.describe "presentation_rooms/edit", type: :view do
  before(:each) do
    @presentation_room = assign(:presentation_room, PresentationRoom.create!(
      :presentation => 1,
      :room => 1
    ))
  end

  it "renders the edit presentation_room form" do
    render

    assert_select "form[action=?][method=?]", presentation_room_path(@presentation_room), "post" do

      assert_select "input[name=?]", "presentation_room[presentation]"

      assert_select "input[name=?]", "presentation_room[room]"
    end
  end
end

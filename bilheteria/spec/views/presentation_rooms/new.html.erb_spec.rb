require 'rails_helper'

RSpec.describe "presentation_rooms/new", type: :view do
  before(:each) do
    assign(:presentation_room, PresentationRoom.new(
      :presentation => 1,
      :room => 1
    ))
  end

  it "renders new presentation_room form" do
    render

    assert_select "form[action=?][method=?]", presentation_rooms_path, "post" do

      assert_select "input[name=?]", "presentation_room[presentation]"

      assert_select "input[name=?]", "presentation_room[room]"
    end
  end
end

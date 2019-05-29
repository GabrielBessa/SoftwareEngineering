require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :number => "MyString",
      :full => false,
      :event_center => 1
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input[name=?]", "room[number]"

      assert_select "input[name=?]", "room[full]"

      assert_select "input[name=?]", "room[event_center]"
    end
  end
end

require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :number => "MyString",
      :full => false,
      :event_center => 1
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input[name=?]", "room[number]"

      assert_select "input[name=?]", "room[full]"

      assert_select "input[name=?]", "room[event_center]"
    end
  end
end

require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :number => "Number",
        :full => false,
        :event_center => 2
      ),
      Room.create!(
        :number => "Number",
        :full => false,
        :event_center => 2
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

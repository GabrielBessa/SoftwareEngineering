require 'rails_helper'

RSpec.describe "presentation_rooms/index", type: :view do
  before(:each) do
    assign(:presentation_rooms, [
      PresentationRoom.create!(
        :presentation => 2,
        :room => 3
      ),
      PresentationRoom.create!(
        :presentation => 2,
        :room => 3
      )
    ])
  end

  it "renders a list of presentation_rooms" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "presentation_rooms/show", type: :view do
  before(:each) do
    @presentation_room = assign(:presentation_room, PresentationRoom.create!(
      :presentation => 2,
      :room => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

require 'rails_helper'

RSpec.describe "event_centers/show", type: :view do
  before(:each) do
    @event_center = assign(:event_center, EventCenter.create!(
      :name => "Name",
      :address => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end

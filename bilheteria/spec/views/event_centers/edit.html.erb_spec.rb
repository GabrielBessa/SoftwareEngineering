require 'rails_helper'

RSpec.describe "event_centers/edit", type: :view do
  before(:each) do
    @event_center = assign(:event_center, EventCenter.create!(
      :name => "MyString",
      :address => 1
    ))
  end

  it "renders the edit event_center form" do
    render

    assert_select "form[action=?][method=?]", event_center_path(@event_center), "post" do

      assert_select "input[name=?]", "event_center[name]"

      assert_select "input[name=?]", "event_center[address]"
    end
  end
end

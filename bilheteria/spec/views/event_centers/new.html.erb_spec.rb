require 'rails_helper'

RSpec.describe "event_centers/new", type: :view do
  before(:each) do
    assign(:event_center, EventCenter.new(
      :name => "MyString",
      :address => 1
    ))
  end

  it "renders new event_center form" do
    render

    assert_select "form[action=?][method=?]", event_centers_path, "post" do

      assert_select "input[name=?]", "event_center[name]"

      assert_select "input[name=?]", "event_center[address]"
    end
  end
end

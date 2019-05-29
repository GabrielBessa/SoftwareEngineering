require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :age => 1,
      :event_type => 1,
      :admin => false
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[name]"

      assert_select "input[name=?]", "event[age]"

      assert_select "input[name=?]", "event[event_type]"

      assert_select "input[name=?]", "event[admin]"
    end
  end
end

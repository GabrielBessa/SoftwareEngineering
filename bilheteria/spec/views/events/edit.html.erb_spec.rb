require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :age => 1,
      :event_type => 1,
      :admin => false
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[name]"

      assert_select "input[name=?]", "event[age]"

      assert_select "input[name=?]", "event[event_type]"

      assert_select "input[name=?]", "event[admin]"
    end
  end
end

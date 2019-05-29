require 'rails_helper'

RSpec.describe "event_classes/edit", type: :view do
  before(:each) do
    @event_class = assign(:event_class, EventClass.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit event_class form" do
    render

    assert_select "form[action=?][method=?]", event_class_path(@event_class), "post" do

      assert_select "input[name=?]", "event_class[description]"
    end
  end
end

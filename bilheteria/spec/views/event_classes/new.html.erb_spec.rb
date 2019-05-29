require 'rails_helper'

RSpec.describe "event_classes/new", type: :view do
  before(:each) do
    assign(:event_class, EventClass.new(
      :description => "MyString"
    ))
  end

  it "renders new event_class form" do
    render

    assert_select "form[action=?][method=?]", event_classes_path, "post" do

      assert_select "input[name=?]", "event_class[description]"
    end
  end
end

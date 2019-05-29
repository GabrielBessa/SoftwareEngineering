require 'rails_helper'

RSpec.describe "event_classes/index", type: :view do
  before(:each) do
    assign(:event_classes, [
      EventClass.create!(
        :description => "Description"
      ),
      EventClass.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of event_classes" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

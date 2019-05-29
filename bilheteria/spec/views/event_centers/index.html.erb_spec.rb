require 'rails_helper'

RSpec.describe "event_centers/index", type: :view do
  before(:each) do
    assign(:event_centers, [
      EventCenter.create!(
        :name => "Name",
        :address => 2
      ),
      EventCenter.create!(
        :name => "Name",
        :address => 2
      )
    ])
  end

  it "renders a list of event_centers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

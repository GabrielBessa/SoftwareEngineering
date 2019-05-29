require 'rails_helper'

RSpec.describe "presentations/index", type: :view do
  before(:each) do
    assign(:presentations, [
      Presentation.create!(
        :event => 2,
        :range => 3.5
      ),
      Presentation.create!(
        :event => 2,
        :range => 3.5
      )
    ])
  end

  it "renders a list of presentations" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end

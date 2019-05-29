require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(
        :number => "Number",
        :code => 2
      ),
      Phone.create!(
        :number => "Number",
        :code => 2
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

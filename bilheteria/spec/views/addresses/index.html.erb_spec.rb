require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :street => "Street",
        :neighborhood => "Neighborhood",
        :number => 2,
        :complement => "Complement",
        :city => 3
      ),
      Address.create!(
        :street => "Street",
        :neighborhood => "Neighborhood",
        :number => 2,
        :complement => "Complement",
        :city => 3
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Neighborhood".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Complement".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

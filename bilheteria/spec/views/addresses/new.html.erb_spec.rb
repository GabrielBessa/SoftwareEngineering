require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      :street => "MyString",
      :neighborhood => "MyString",
      :number => 1,
      :complement => "MyString",
      :city => 1
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input[name=?]", "address[street]"

      assert_select "input[name=?]", "address[neighborhood]"

      assert_select "input[name=?]", "address[number]"

      assert_select "input[name=?]", "address[complement]"

      assert_select "input[name=?]", "address[city]"
    end
  end
end

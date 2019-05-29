require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street => "MyString",
      :neighborhood => "MyString",
      :number => 1,
      :complement => "MyString",
      :city => 1
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[street]"

      assert_select "input[name=?]", "address[neighborhood]"

      assert_select "input[name=?]", "address[number]"

      assert_select "input[name=?]", "address[complement]"

      assert_select "input[name=?]", "address[city]"
    end
  end
end

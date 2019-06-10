require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :cpf => "Cpf",
        :name => "Name",
        :last_name => "Last Name",
        :email => "Email",
        :login => "Login",
        :password => "Password"
      ),
      User.create!(
        :cpf => "Cpf",
        :name => "Name",
        :last_name => "Last Name",
        :email => "Email",
        :login => "Login",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :cpf => "Cpf",
      :name => "Name",
      :last_name => "Last Name",
      :email => "Email",
      :login => "Login",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Login/)
    expect(rendered).to match(/Password/)
  end
end

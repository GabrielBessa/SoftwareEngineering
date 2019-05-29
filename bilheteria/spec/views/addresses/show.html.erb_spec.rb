require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street => "Street",
      :neighborhood => "Neighborhood",
      :number => 2,
      :complement => "Complement",
      :city => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Neighborhood/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Complement/)
    expect(rendered).to match(/3/)
  end
end

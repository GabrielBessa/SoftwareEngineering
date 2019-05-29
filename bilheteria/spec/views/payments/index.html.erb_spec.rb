require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :buy => 2,
        :method => 3,
        :paid_value => 4.5
      ),
      Payment.create!(
        :buy => 2,
        :method => 3,
        :paid_value => 4.5
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
  end
end

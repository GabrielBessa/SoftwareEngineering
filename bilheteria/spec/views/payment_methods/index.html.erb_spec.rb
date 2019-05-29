require 'rails_helper'

RSpec.describe "payment_methods/index", type: :view do
  before(:each) do
    assign(:payment_methods, [
      PaymentMethod.create!(
        :description => "Description"
      ),
      PaymentMethod.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of payment_methods" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

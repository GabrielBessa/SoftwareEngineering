require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :buy => 1,
      :method => 1,
      :paid_value => 1.5
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "input[name=?]", "payment[buy]"

      assert_select "input[name=?]", "payment[method]"

      assert_select "input[name=?]", "payment[paid_value]"
    end
  end
end

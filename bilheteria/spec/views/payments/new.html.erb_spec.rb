require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :buy => 1,
      :method => 1,
      :paid_value => 1.5
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input[name=?]", "payment[buy]"

      assert_select "input[name=?]", "payment[method]"

      assert_select "input[name=?]", "payment[paid_value]"
    end
  end
end

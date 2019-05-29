require 'rails_helper'

RSpec.describe "presentations/new", type: :view do
  before(:each) do
    assign(:presentation, Presentation.new(
      :event => 1,
      :range => 1.5
    ))
  end

  it "renders new presentation form" do
    render

    assert_select "form[action=?][method=?]", presentations_path, "post" do

      assert_select "input[name=?]", "presentation[event]"

      assert_select "input[name=?]", "presentation[range]"
    end
  end
end

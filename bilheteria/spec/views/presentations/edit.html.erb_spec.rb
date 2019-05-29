require 'rails_helper'

RSpec.describe "presentations/edit", type: :view do
  before(:each) do
    @presentation = assign(:presentation, Presentation.create!(
      :event => 1,
      :range => 1.5
    ))
  end

  it "renders the edit presentation form" do
    render

    assert_select "form[action=?][method=?]", presentation_path(@presentation), "post" do

      assert_select "input[name=?]", "presentation[event]"

      assert_select "input[name=?]", "presentation[range]"
    end
  end
end

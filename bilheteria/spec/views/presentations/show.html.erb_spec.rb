require 'rails_helper'

RSpec.describe "presentations/show", type: :view do
  before(:each) do
    @presentation = assign(:presentation, Presentation.create!(
      :event => 2,
      :range => 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
  end
end

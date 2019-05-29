require 'rails_helper'

RSpec.describe "event_classes/show", type: :view do
  before(:each) do
    @event_class = assign(:event_class, EventClass.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end

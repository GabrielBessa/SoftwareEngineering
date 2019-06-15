require 'rails_helper'

RSpec.describe EventCenter, type: :model do
  it 'is valid with valid attributes' do
    event = EventCenter.new
    event.name = "Mane Garrincha"
  end

  it 'is not valid with invalid attributes' do
    event = EventCenter.new
    event.name = nil
    expect(event).not_to be_valid
  end

end

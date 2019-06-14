require 'rails_helper'

RSpec.describe EventClass, type: :model do
  it 'is valid with valid attributes' do
    event = EventClass.new
    event.description = "lorem lorem lorem lorem lorem lorem"
  end

  it 'is not valid with invalid attributes' do
    event = EventClass.new
    event.description = nil

    expect(event).not_to be_valid
  end
end

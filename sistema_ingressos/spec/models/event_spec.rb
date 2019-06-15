require 'rails_helper'
require 'date'

RSpec.describe Event, type: :model do
  it 'is valid with valid attributes' do
    event = Event.new
    event.name = "Ritmo dos fluxos"
    event.begin_date = Date.parse("01-01-2018") 
    event.end_date = Date.parse("01-01-2019")
  end

  it 'is not valid with invalid attributes' do
    event = Event.new
    event.name = nil
    event.begin_date = nil
    event.end_date = nil
    expect(event).not_to be_valid
  end
end

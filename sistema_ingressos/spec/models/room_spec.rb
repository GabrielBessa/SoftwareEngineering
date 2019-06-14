require 'rails_helper'

RSpec.describe Room, type: :model do
  it 'is valid with valid attributes' do
    room = Room.new 
    room.number = 10
    room.crowded = true
  end

  it 'is not valid with invalid attributes' do
    room = Room.new
    room.number = nil
    room.crowded = nil

    expect(room).not_to be_valid
  end
end

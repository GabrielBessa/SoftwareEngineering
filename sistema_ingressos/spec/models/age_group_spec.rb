require 'rails_helper'

RSpec.describe AgeGroup, type: :model do
  
  it 'is valid with valid attributes' do
    a = AgeGroup.new
    a.age = 20
    expect(a).to be_valid
  end

  it 'is not valid with invalid attributes' do
    a = AgeGroup.new
    a.age = nil
    expect(a).not_to be_valid
  end

end

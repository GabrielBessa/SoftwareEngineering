require 'rails_helper'
RSpec.describe City, type: :model do
  it 'is valid with valid attributes' do

    city = City.new
    city.name = "Brasilia"
    expect(city).to be_valid
  end

  it 'is not valid with invalid attributes' do

    city = City.new
    city.name = nil
    expect(city).to_not be_valid
  end

end

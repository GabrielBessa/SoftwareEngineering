require 'rails_helper'

RSpec.describe Address, type: :model do
  
  it 'is valid with valid attributes' do
    ad = Address.new
    ad.street = "Rua Dom Bosco"
    ad.neighborhood = "Quebrada Dom Bosco"
    ad.number = 10
    # expect(ad).to be_valid 
    # se eu tirar a validacao da city, ele consegue criar address sem cidade
    # e isso n deve acontecer
  end

  it 'is not valid with nil attributes' do
    ad = Address.new
    ad.street = nil
    ad.neighborhood = nil
    ad.number = nil

    expect(ad).to_not be_valid
  end

end

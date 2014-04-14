require 'spec_helper'

describe Manufacturer do

  it {should have_valid(:name).when('Tesla') }
  it {should_not have_valid(:name).when(nil, '')}

  it {should have_valid(:country).when('England') }
  it {should_not have_valid(:country).when(nil, '') }


  it {should have_many (:cars) }


  it 'nullifies manufacturer on destroy' do
    manufacturer = Manufacturer.create!(name: 'Tesla', country: 'United States')
    car = Car.create!(color: 'red', year:'1980', mileage: '60250', manufacturer: manufacturer )
    expect(car.manufacturer_id).to eq(manufacturer.id)

    manufacturer.destroy!
    car.reload

    expect(car.manufacturer_id).to eq(nil)
  end

end

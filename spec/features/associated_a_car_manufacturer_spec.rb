require 'spec_helper'

  feature 'associating a manufacturer with a car' do
    scenario 'add a car' do
      manufacturer = FactoryGirl.create(:manufacturer)
      car = FactoryGirl.create(:car, manufacturer: nil)
      visit new_car_path
      fill_in 'Color', with: car.color
      fill_in 'Year', with: car.year
      fill_in 'Mileage', with: car.mileage
      select manufacturer.name, from: 'Manufacturer'

      click_on 'Add Car'

      expect(page).to have_content('Car was successfully added')

    end

  end

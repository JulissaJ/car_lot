require 'spec_helper'

feature 'care salesperson adds car', %q{
  As a care salesperson
  I want to record a a newly acquired car
  So that I list it on my lot
  } do

#     Acceptance Criteria:

# I must specify the color, year, and mileage of the car.
# Only years from 1980 and above can be specified.
# I can optionally specify a description of the car.
# If I enter all of the required information in the required formats, the car is recorded.
# If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
# Upon successfully creating a car, I am redirected so that I can create another car.

  scenario 'successfully adds a building' do
    prev_count = Car.count
    visit new_car_path
    fill_in 'Color', with: 'red'
    fill_in 'Year', with: '2003'
    fill_in 'Mileage', with: '69000'


    click_on 'Add Car'

    expect(page).to have_content 'Car was successfully added'
    expect(Car.count).to eq(prev_count + 1)


  end

    scenario 'Invalid building' do
      visit new_car_path

      click_on 'Add Car'
      expect(page).to have_content 'can\'t be blank'


  end

end

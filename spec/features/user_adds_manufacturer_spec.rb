require 'spec_helper'

feature 'user adds manufacturer', %q{
  As a car salesperson
  I want to record a car list's manufacturer
  So that I can keep track of the types of cars found in the lot
} do



# Acceptance Criteria:

# I must specify a manufacturer name and country.
# If I do not specify the required information, I am presented with errors.
# If I specify the required information, the manufacturer is recorded and I am redirected to enter another new manufacturer.

  scenario 'successfully adds a building' do
    prev_count = Manufacturer.count
    visit new_manufacturer_path
    fill_in 'Name', with: 'Tesla'
    select 'United States', from: 'Country'

    click_on 'Add Manufacturer'

    expect(page).to have_content 'Manufacturer was successfully added'
    expect(Manufacturer.count).to eq(prev_count + 1)
  end
end



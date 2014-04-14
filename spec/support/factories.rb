FactoryGirl.define do

  factory :manufacturer do
    name 'Tesla'
    country 'United States'
  end


  factory :car do
    color 'Red'
    year '2014'
    mileage '23500'
    manufacturer
  end



end

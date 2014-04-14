require 'spec_helper'

describe Car do
  it { should have_valid(:year).when('1989') }
  it {should_not have_valid(:year).when('1979', nil, '', '97859', 'dog') }


  it { should have_valid(:color).when('red') }
  it { should_not have_valid(:color).when(nil, '') }

  it {should have_valid(:mileage).when('100000')}
  it {should_not have_valid(:mileage).when('dog', nil, '') }
end

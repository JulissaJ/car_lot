require 'spec_helper'

describe Manufacturer do

  it {should have_valid(:name).when('Tesla') }
  it {should_not have_valid(:name).when(nil, '')}

  it {should have_valid(:country).when('England') }
  it {should_not have_valid(:country).when(nil, '') }


  it {should have_many (:cars) }


end

class Car < ActiveRecord::Base
  validates :year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1980, less_than_or_equal_to: 3000 }
  validates :color, presence: true
  validates :mileage, presence: true, numericality: true
end

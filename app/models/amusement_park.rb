class AmusementPark < ApplicationRecord
  has_many :rides

  def rides_alphabetically
    rides.order(:name)
  end

  def average_thrill
    rides.average(:thrill_rating)
  end
end

class Locus < ActiveRecord::Base

  geocoded_by :address, latitude: :lat, longitude: :long

  after_validation :geocode

  validates :title, presence: true
  validates :address, presence: true

end

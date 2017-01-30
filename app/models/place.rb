class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, :address, :description, length: { minimum: 3 }, presence: true
  WillPaginate.per_page = 10
end

class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  WillPaginate.per_page = 10
end

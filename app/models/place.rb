class Place < ApplicationRecord
  belongs_to :user
  WillPaginate.per_page = 10
end

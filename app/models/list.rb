class List < ApplicationRecord
  broadcasts_refreshes

  has_many :items
end

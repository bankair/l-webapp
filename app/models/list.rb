class List < ApplicationRecord
  broadcasts_refreshes

  has_many :items

  validates :name, presence: true
end

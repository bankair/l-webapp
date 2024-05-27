class Item < ApplicationRecord
  broadcasts_refreshes

  belongs_to :list

  validates :name, presence: true
end

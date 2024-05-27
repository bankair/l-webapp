class Item < ApplicationRecord
  broadcasts_refreshes
  belongs_to :list
end

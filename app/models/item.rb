class Item < ApplicationRecord
  has_and_belongs_to_many(:users)
  validates :item, presence: true
  validates :item_type, presence: true
  validates :stat, presence: true
end
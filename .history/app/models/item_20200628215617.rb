class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :volume, presence: true, numericality: true {greater_than: 0}
end

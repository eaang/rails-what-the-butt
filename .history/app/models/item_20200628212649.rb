class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :volume, presence: true, numericality: true
end

class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :volume, presence: true, numericality: true
end

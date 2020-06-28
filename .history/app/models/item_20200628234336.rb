class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :volume, presence: true, numericality: { greater_than: 0 }
  validates :unit, presence: true, inclusion: { in: %w(gallons ounces litres millilitres) }
end

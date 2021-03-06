class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :volume, presence: true, numericality: { greater_than: 0 }
  validetes :units, presence: true, inclusion: %w(gallons ounces litres millilitres)
end

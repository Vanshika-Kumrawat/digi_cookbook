class Recipe < ApplicationRecord
  has_many :ingredients


  validates :name, :instructions, :cooking_time, presence: true
  validates :name, length: {maximum: 100}
  validates :instructions, length: {maximum: 1000}
  validates :cooking_time, numericality: {greater_than: 0}
end

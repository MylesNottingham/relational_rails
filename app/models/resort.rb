class Resort < ApplicationRecord
  has_many :guests
  validates_presence_of :name
  validates_numericality_of :max_capacity
  validates :open_for_season, inclusion: [true, false]
end

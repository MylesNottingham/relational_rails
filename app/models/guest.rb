class Guest < ApplicationRecord
  belongs_to :resort
  validates_presence_of :name, :days_active, :resort_id
  validates :pass_holder, inclusion: [true, false]
end

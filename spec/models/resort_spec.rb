require "rails_helper"

RSpec.describe Resort do
  describe "relationships" do
    it {should have_many(:guests)}
  end

  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_numericality_of(:max_capacity)}
  end
end

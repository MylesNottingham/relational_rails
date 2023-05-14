require "rails_helper"

RSpec.describe Guest do
  describe "relationships" do
    it {should belong_to(:resort)}
  end

  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:days_active)}
    it {should validate_presence_of(:resort_id)}
  end
end

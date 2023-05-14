require "rails_helper"

RSpec.describe "Resort Show Page" do
  before :each do
    test_seed
  end

  describe "Mammoth" do
    before :each do
      visit "/resorts/#{@mammoth.id}"
    end

    it "shows the resort attributes" do
      expect(page).to have_content(@mammoth.name)
      expect(page).to have_content("Max Capacity: #{@mammoth.max_capacity}")
      expect(page).to have_content("Open for Season: #{@mammoth.open_for_season ? 'Yes' : 'No'}")
    end
  end

  describe "Snow Summit" do
    before :each do
      visit "/resorts/#{@snow_summit.id}"
    end

    it "shows the resort attributes" do
      expect(page).to have_content(@snow_summit.name)
      expect(page).to have_content("Max Capacity: #{@snow_summit.max_capacity}")
      expect(page).to have_content("Open for Season: #{@snow_summit.open_for_season ? 'Yes' : 'No'}")
    end
  end

  describe "Bear Mountain" do
    before :each do
      visit "/resorts/#{@bear_mountain.id}"
    end

    it "shows the resort attributes" do
      expect(page).to have_content(@bear_mountain.name)
      expect(page).to have_content("Max Capacity: #{@bear_mountain.max_capacity}")
      expect(page).to have_content("Open for Season: #{@bear_mountain.open_for_season ? 'Yes' : 'No'}")
    end
  end
end

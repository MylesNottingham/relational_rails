require "rails_helper"

RSpec.describe "Resort Index Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
    visit "/resorts"
  end

  describe "links" do
    it "shows link to All Guests" do
      expect(page).to have_link("All Guests")
      click_link "All Guests"
      expect(current_path).to eq("/guests")
    end

    it "shows link to All Resorts" do
      expect(page).to have_link("All Resorts")
      click_link "All Resorts"
      expect(current_path).to eq("/resorts")
    end

    it "shows link to create New Resort" do
      expect(page).to have_link("New Resort")
      click_link "New Resort"
      expect(current_path).to eq("/resorts/new")
    end
  end

  describe "Body" do
    it "shows the title of the page" do
      expect(page).to have_content("All Resorts")
    end

    it "shows names of all resorts with creation date ordered by creation timestamp" do
      expect(page).to have_content(
        "#{@mammoth.name} - #{@mammoth.created_at}\n#{@snow_summit.name} - #{@snow_summit.created_at}"
      )
      expect(page).to have_content(
        "#{@snow_summit.name} - #{@snow_summit.created_at}\n#{@bear_mountain.name} - #{@bear_mountain.created_at}"
      )
    end
  end
end

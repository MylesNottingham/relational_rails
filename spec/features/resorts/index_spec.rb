require "rails_helper"

RSpec.describe "Resort Index Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
    visit "/resorts"
  end

  describe "links" do
    test_for_link_to_guest_index
    test_for_link_to_resort_index

    it "shows link to create New Resort" do
      expect(page).to have_link("New Resort")
      click_link "New Resort"
      expect(current_path).to eq("/resorts/new")
    end

    it "links to Mammoth's update page" do
      click_link @mammoth.name

      expect(current_path).to eq("/resorts/#{@mammoth.id}/edit")
    end

    it "links to Snow Summit's update page" do
      click_link @snow_summit.name

      expect(current_path).to eq("/resorts/#{@snow_summit.id}/edit")
    end

    it "links to Bear Mountain's update page" do
      click_link @bear_mountain.name

      expect(current_path).to eq("/resorts/#{@bear_mountain.id}/edit")
    end
  end

  describe "Body" do
    it "shows the title of the page" do
      expect(page).to have_content("All Resorts")
    end

    it "shows names of all resorts with creation date ordered by creation timestamp" do
      actual = page.all("h3").map(&:text)
      expected = [
        "#{@mammoth.name} - #{@mammoth.created_at}",
        "#{@snow_summit.name} - #{@snow_summit.created_at}",
        "#{@bear_mountain.name} - #{@bear_mountain.created_at}"
      ]

      expect(actual).to eq(expected)
    end

    it "shows link to all resorts' update pages" do
      expect(page).to have_link("Edit #{@mammoth.name}")
      expect(page).to have_link("Edit #{@snow_summit.name}")
      expect(page).to have_link("Edit #{@bear_mountain.name}")
    end
  end
end

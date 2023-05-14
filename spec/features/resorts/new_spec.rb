require "rails_helper"

RSpec.describe "Resort New Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
    visit "/resorts/new"
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
  end

  describe "Body" do
    it "shows the title of the page" do
      expect(page).to have_content("Add New Resort")
    end

    it "shows resort creation form" do
      expect(page).to have_content("Name:")
      expect(page).to have_content("Max Capacity:")
      expect(page).to have_content("Open for Season:")
    end

    it "can create a new resort" do
      fill_in "Name:", with: "Test Resort"
      fill_in "Max Capacity:", with: 100
      choose "open"

      click_button "create_resort"

      expect(current_path).to eq("/resorts")
      expect(page).to have_content("Test Resort")

      new_resort = Resort.last

      expect(new_resort.name).to eq("Test Resort")
      expect(new_resort.max_capacity).to eq(100)
      expect(new_resort.open_for_season).to eq(true)
    end

    it "can create another new resort" do
      fill_in "Name:", with: "Test Resort 2"
      fill_in "Max Capacity:", with: 200
      choose "not_open"

      click_button "create_resort"

      expect(current_path).to eq("/resorts")
      expect(page).to have_content("Test Resort 2")

      new_resort = Resort.last

      expect(new_resort.name).to eq("Test Resort 2")
      expect(new_resort.max_capacity).to eq(200)
      expect(new_resort.open_for_season).to eq(false)
    end
  end
end

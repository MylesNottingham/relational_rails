require "rails_helper"

RSpec.describe "Resort Show Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
  end

  describe "Mammoth" do
    before :each do
      visit "/resorts/#{@mammoth.id}"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index

      it "shows link to Mammoth Guests" do
        expect(page).to have_link("#{@mammoth.name} Guests")
        click_link "Mammoth Guests"
        expect(current_path).to eq("/resorts/#{@mammoth.id}/guests")
      end

      it "shows link to update resort" do
        expect(page).to have_link("Update Resort")
        click_link "Update Resort"
        expect(current_path).to eq("/resorts/#{@mammoth.id}/edit")
      end
    end

    describe "body" do
      it "shows the resort attributes" do
        expect(page).to have_content(@mammoth.name)
        expect(page).to have_content("Guest Count: #{@mammoth.guests.count}")
        expect(page).to have_content("Max Capacity: #{@mammoth.max_capacity}")
        expect(page).to have_content("Open for Season: #{@mammoth.open_for_season ? 'Yes' : 'No'}")
      end
    end
  end

  describe "Snow Summit" do
    before :each do
      visit "/resorts/#{@snow_summit.id}"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index

      it "shows link to Snow Summit Guests" do
        expect(page).to have_link("#{@snow_summit.name} Guests")
        click_link "Snow Summit Guests"
        expect(current_path).to eq("/resorts/#{@snow_summit.id}/guests")
      end

      it "shows link to update resort" do
        expect(page).to have_link("Update Resort")
        click_link "Update Resort"
        expect(current_path).to eq("/resorts/#{@snow_summit.id}/edit")
      end
    end

    describe "body" do
      it "shows the resort attributes" do
        expect(page).to have_content(@snow_summit.name)
        expect(page).to have_content("Guest Count: #{@snow_summit.guests.count}")
        expect(page).to have_content("Max Capacity: #{@snow_summit.max_capacity}")
        expect(page).to have_content("Open for Season: #{@snow_summit.open_for_season ? 'Yes' : 'No'}")
      end
    end
  end

  describe "Bear Mountain" do
    before :each do
      visit "/resorts/#{@bear_mountain.id}"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index

      it "shows link to Bear Mountain Guests" do
        expect(page).to have_link("#{@bear_mountain.name} Guests")
        click_link "Bear Mountain Guests"
        expect(current_path).to eq("/resorts/#{@bear_mountain.id}/guests")
      end

      it "shows link to update resort" do
        expect(page).to have_link("Update Resort")
        click_link "Update Resort"
        expect(current_path).to eq("/resorts/#{@bear_mountain.id}/edit")
      end
    end

    describe "body" do
      it "shows the resort attributes" do
        expect(page).to have_content(@bear_mountain.name)
        expect(page).to have_content("Guest Count: #{@bear_mountain.guests.count}")
        expect(page).to have_content("Max Capacity: #{@bear_mountain.max_capacity}")
        expect(page).to have_content("Open for Season: #{@bear_mountain.open_for_season ? 'Yes' : 'No'}")
      end
    end
  end
end

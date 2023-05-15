require "rails_helper"

RSpec.describe "Resort Edit Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
  end

  describe "Change Mammoth to June" do
    before :each do
      visit "/resorts/#{@mammoth.id}/edit"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index
    end

    describe "body" do
      it "shows the title of the page" do
        expect(page).to have_content("Update Resort")
      end

      it "shows resort update form" do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Max Capacity:")
        expect(page).to have_content("Open for Season:")
      end

      it "can update a resort" do
        expect(@mammoth.name).to eq("Mammoth")
        expect(@mammoth.max_capacity).to eq(1000)
        expect(@mammoth.open_for_season).to eq(true)

        fill_in "Name:", with: "June"
        fill_in "Max Capacity:", with: 300
        choose "not_open"

        click_button "submit"

        @mammoth.reload
        expect(current_path).to eq("/resorts/#{@mammoth.id}")
        expect(@mammoth.name).to eq("June")
        expect(@mammoth.max_capacity).to eq(300)
        expect(@mammoth.open_for_season).to eq(false)
      end
    end
  end

  describe "Change Bear Mountain to Snow Valley" do
    before :each do
      visit "/resorts/#{@bear_mountain.id}/edit"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index
    end

    describe "body" do
      it "shows the title of the page" do
        expect(page).to have_content("Update Resort")
      end

      it "shows resort update form" do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Max Capacity:")
        expect(page).to have_content("Open for Season:")
      end

      it "can update a resort" do
        expect(@bear_mountain.name).to eq("Bear Mountain")
        expect(@bear_mountain.max_capacity).to eq(500)
        expect(@bear_mountain.open_for_season).to eq(false)

        fill_in "Name:", with: "Snow Valley"
        fill_in "Max Capacity:", with: 200
        choose "open"

        click_button "submit"

        @bear_mountain.reload
        expect(current_path).to eq("/resorts/#{@bear_mountain.id}")
        expect(@bear_mountain.name).to eq("Snow Valley")
        expect(@bear_mountain.max_capacity).to eq(200)
        expect(@bear_mountain.open_for_season).to eq(true)
      end
    end
  end
end

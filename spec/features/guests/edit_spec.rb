require "rails_helper"

RSpec.describe "Guest Edit Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
  end

  describe "Change Nick to Jesse" do
    before :each do
      visit "/guests/#{@nick.id}/edit"
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

    describe "body" do
      it "shows the title of the page" do
        expect(page).to have_content("Update Guest")
      end

      it "shows guest update form" do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Pass Holder:")
        expect(page).to have_content("Days Active:")
        expect(page).to have_content("Resort ID:")
      end

      it "can update a guest" do
        expect(@nick.name).to eq("Nick")
        expect(@nick.pass_holder).to eq(true)
        expect(@nick.days_active).to eq(20)
        expect(@nick.resort_id).to eq(@mammoth.id)

        fill_in "Name:", with: "Jesse"
        choose "is_not_pass_holder"
        fill_in "days_active", with: 69
        fill_in "resort_id", with: @snow_summit.id

        click_button "submit"

        @nick.reload
        expect(current_path).to eq("/guests/#{@nick.id}")
        expect(@nick.name).to eq("Jesse")
        expect(@nick.pass_holder).to eq(false)
        expect(@nick.days_active).to eq(69)
        expect(@nick.resort_id).to eq(@snow_summit.id)
      end
    end
  end

  describe "Change Ali to Tim" do
    before :each do
      visit "/guests/#{@ali.id}/edit"
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

    describe "body" do
      it "shows the title of the page" do
        expect(page).to have_content("Update Guest")
      end

      it "shows guest update form" do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Pass Holder:")
        expect(page).to have_content("Days Active:")
        expect(page).to have_content("Resort ID:")
      end

      it "can update a guest" do
        expect(@ali.name).to eq("Ali")
        expect(@ali.pass_holder).to eq(false)
        expect(@ali.days_active).to eq(10)
        expect(@ali.resort_id).to eq(@snow_summit.id)

        fill_in "Name:", with: "Tim"
        choose "is_pass_holder"
        fill_in "days_active", with: 99
        fill_in "resort_id", with: @bear_mountain.id

        click_button "submit"

        @ali.reload
        expect(current_path).to eq("/guests/#{@ali.id}")
        expect(@ali.name).to eq("Tim")
        expect(@ali.pass_holder).to eq(true)
        expect(@ali.days_active).to eq(99)
        expect(@ali.resort_id).to eq(@bear_mountain.id)
      end
    end
  end
end

require "rails_helper"

RSpec.describe "Guest Show Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
  end

  describe "Nick" do
    before :each do
      visit "/guests/#{@nick.id}"
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
      it "shows the guests attributes" do
        expect(page).to have_content(@nick.name)
        expect(page).to have_content("Pass Holder: #{@nick.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Days Active: #{@nick.days_active}")
        expect(page).to have_content("Resort ID: #{@nick.resort_id}")
      end
    end
  end

  describe "Sal" do
    before :each do
      visit "/guests/#{@sal.id}"
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
      it "shows the guests attributes" do
        expect(page).to have_content(@sal.name)
        expect(page).to have_content("Pass Holder: #{@sal.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Days Active: #{@sal.days_active}")
        expect(page).to have_content("Resort ID: #{@sal.resort_id}")
      end
    end
  end

  describe "Mike" do
    before :each do
      visit "/guests/#{@mike.id}"
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
      it "shows the guests attributes" do
        expect(page).to have_content(@mike.name)
        expect(page).to have_content("Pass Holder: #{@mike.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Days Active: #{@mike.days_active}")
        expect(page).to have_content("Resort ID: #{@mike.resort_id}")
      end
    end
  end
end

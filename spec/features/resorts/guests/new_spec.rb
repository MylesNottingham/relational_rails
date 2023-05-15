require "rails_helper"

RSpec.describe "ResortGuest New Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
  end

  describe "Mammoth" do
    before :each do
      visit "/resorts/#{@mammoth.id}/guests/new"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index
    end

    describe "Body" do
      it "shows the title of the page" do
        expect(page).to have_content("Add New Guest")
      end

      it "shows guest creation form" do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Pass Holder:")
        expect(page).to have_content("Days Active:")
      end

      it "can create a new guest for curent resort" do
        fill_in "Name:", with: "Test Guest"
        choose "is_pass_holder"
        fill_in "Days Active:", with: 12

        click_button "submit"

        expect(current_path).to eq("/resorts/#{@mammoth.id}/guests")
        expect(page).to have_content("Test Guest")

        new_guest = Guest.last

        expect(new_guest.name).to eq("Test Guest")
        expect(new_guest.pass_holder).to eq(true)
        expect(new_guest.days_active).to eq(12)
      end

      it "can create another new guest for curent resort" do
        fill_in "Name:", with: "Test Guest 2"
        choose "is_not_pass_holder"
        fill_in "Days Active:", with: 32

        click_button "submit"

        expect(current_path).to eq("/resorts/#{@mammoth.id}/guests")
        expect(page).to have_content("Test Guest 2")

        new_guest = Guest.last

        expect(new_guest.name).to eq("Test Guest 2")
        expect(new_guest.pass_holder).to eq(false)
        expect(new_guest.days_active).to eq(32)
      end
    end
  end

  describe "Snow Summit" do
    before :each do
      visit "/resorts/#{@snow_summit.id}/guests/new"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index
    end

    describe "Body" do
      it "shows the title of the page" do
        expect(page).to have_content("Add New Guest")
      end

      it "shows guest creation form" do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Pass Holder:")
        expect(page).to have_content("Days Active:")
      end

      it "can create a new guest for curent resort" do
        fill_in "Name:", with: "Test Guest"
        choose "is_pass_holder"
        fill_in "Days Active:", with: 12

        click_button "submit"

        expect(current_path).to eq("/resorts/#{@snow_summit.id}/guests")
        expect(page).to have_content("Test Guest")

        new_guest = Guest.last

        expect(new_guest.name).to eq("Test Guest")
        expect(new_guest.pass_holder).to eq(true)
        expect(new_guest.days_active).to eq(12)
      end

      it "can create another new guest for curent resort" do
        fill_in "Name:", with: "Test Guest 2"
        choose "is_not_pass_holder"
        fill_in "Days Active:", with: 32

        click_button "submit"

        expect(current_path).to eq("/resorts/#{@snow_summit.id}/guests")
        expect(page).to have_content("Test Guest 2")

        new_guest = Guest.last

        expect(new_guest.name).to eq("Test Guest 2")
        expect(new_guest.pass_holder).to eq(false)
        expect(new_guest.days_active).to eq(32)
      end
    end
  end

  describe "Bear Mountain" do
    before :each do
      visit "/resorts/#{@bear_mountain.id}/guests/new"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index
    end

    describe "Body" do
      it "shows the title of the page" do
        expect(page).to have_content("Add New Guest")
      end

      it "shows guest creation form" do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Pass Holder:")
        expect(page).to have_content("Days Active:")
      end

      it "can create a new guest for curent resort" do
        fill_in "Name:", with: "Test Guest"
        choose "is_pass_holder"
        fill_in "Days Active:", with: 12

        click_button "submit"

        expect(current_path).to eq("/resorts/#{@bear_mountain.id}/guests")
        expect(page).to have_content("Test Guest")

        new_guest = Guest.last

        expect(new_guest.name).to eq("Test Guest")
        expect(new_guest.pass_holder).to eq(true)
        expect(new_guest.days_active).to eq(12)
      end

      it "can create another new guest for curent resort" do
        fill_in "Name:", with: "Test Guest 2"
        choose "is_not_pass_holder"
        fill_in "Days Active:", with: 32

        click_button "submit"

        expect(current_path).to eq("/resorts/#{@bear_mountain.id}/guests")
        expect(page).to have_content("Test Guest 2")

        new_guest = Guest.last

        expect(new_guest.name).to eq("Test Guest 2")
        expect(new_guest.pass_holder).to eq(false)
        expect(new_guest.days_active).to eq(32)
      end
    end
  end
end

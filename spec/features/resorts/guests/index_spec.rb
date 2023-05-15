require "rails_helper"

RSpec.describe "Resorts Guests Index Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
  end

  describe "Mammoth" do
    before :each do
      visit "/resorts/#{@mammoth.id}/guests"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index

      it "shows link to add a new guest" do
        expect(page).to have_link("Add New Guest")
        click_link "Add New Guest"
        expect(current_path).to eq("/resorts/#{@mammoth.id}/guests/new")
      end

      it "shows link to sort guests by name" do
        expect(page).to have_link("Sort by Name")

        click_link "Sort by Name"

        expect(current_path).to eq("/resorts/#{@mammoth.id}/guests")
      end
    end

    describe "body" do
      it "shows the title of the page" do
        expect(page).to have_content("#{@mammoth.name} Guests")
      end

      it "shows the names of all guests" do
        expect(page).to have_content(@nick.name)
        expect(page).to have_content(@megan.name)
        expect(page).to have_content(@brian.name)
        expect(page).to have_content(@tina.name)
        expect(page).to_not have_content(@nat.name)
        expect(page).to_not have_content(@sal.name)
        expect(page).to_not have_content(@ali.name)
        expect(page).to_not have_content(@mike.name)
        expect(page).to_not have_content(@molly.name)
      end

      it "shows if each guest is a pass holder" do
        expect(page).to have_content("Pass Holder: #{@nick.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Pass Holder: #{@megan.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Pass Holder: #{@brian.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Pass Holder: #{@tina.pass_holder ? 'Yes' : 'No'}")
      end

      it "shows the number of days each guest has been active" do
        expect(page).to have_content("Days Active: #{@nick.days_active}")
        expect(page).to have_content("Days Active: #{@megan.days_active}")
        expect(page).to have_content("Days Active: #{@brian.days_active}")
        expect(page).to have_content("Days Active: #{@tina.days_active}")
      end

      it "can sort guests by name" do
        actual = page.all("h3").map(&:text)
        unsorted = [@nick.name, @megan.name, @brian.name, @tina.name]

        expect(actual).to eq(unsorted)

        click_link "Sort by Name"

        actual = page.all("h3").map(&:text)
        sorted = [@brian.name, @megan.name, @nick.name, @tina.name]

        expect(actual).to eq(sorted)
      end
    end
  end

  describe "Snow Summit" do
    before :each do
      visit "/resorts/#{@snow_summit.id}/guests"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index

      it "shows link to add a new guest" do
        expect(page).to have_link("Add New Guest")
        click_link "Add New Guest"
        expect(current_path).to eq("/resorts/#{@snow_summit.id}/guests/new")
      end

      it "shows link to sort guests by name" do
        expect(page).to have_link("Sort by Name")

        click_link "Sort by Name"

        expect(current_path).to eq("/resorts/#{@snow_summit.id}/guests")
      end
    end

    describe "body" do
      it "shows the title of the page" do
        expect(page).to have_content("#{@snow_summit.name} Guests")
      end

      it "shows the names of all guests" do
        expect(page).to_not have_content(@nick.name)
        expect(page).to_not have_content(@megan.name)
        expect(page).to_not have_content(@brian.name)
        expect(page).to_not have_content(@tina.name)
        expect(page).to have_content(@nat.name)
        expect(page).to have_content(@sal.name)
        expect(page).to have_content(@ali.name)
        expect(page).to_not have_content(@mike.name)
        expect(page).to_not have_content(@molly.name)
      end

      it "shows if each guest is a pass holder" do
        expect(page).to have_content("Pass Holder: #{@nat.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Pass Holder: #{@sal.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Pass Holder: #{@ali.pass_holder ? 'Yes' : 'No'}")
      end

      it "shows the number of days each guest has been active" do
        expect(page).to have_content("Days Active: #{@nat.days_active}")
        expect(page).to have_content("Days Active: #{@sal.days_active}")
        expect(page).to have_content("Days Active: #{@ali.days_active}")
      end

      it "can sort guests by name" do
        actual = page.all("h3").map(&:text)
        unsorted = [@nat.name, @sal.name, @ali.name]

        expect(actual).to eq(unsorted)

        click_link "Sort by Name"

        actual = page.all("h3").map(&:text)
        sorted = [@ali.name, @nat.name, @sal.name]

        expect(actual).to eq(sorted)
      end
    end
  end

  describe "Bear Mountain" do
    before :each do
      visit "/resorts/#{@bear_mountain.id}/guests"
    end

    describe "links" do
      test_for_link_to_guest_index
      test_for_link_to_resort_index

      it "shows link to add a new guest" do
        expect(page).to have_link("Add New Guest")
        click_link "Add New Guest"
        expect(current_path).to eq("/resorts/#{@bear_mountain.id}/guests/new")
      end

      it "shows link to sort guests by name" do
        expect(page).to have_link("Sort by Name")

        click_link "Sort by Name"

        expect(current_path).to eq("/resorts/#{@bear_mountain.id}/guests")
      end
    end

    describe "body" do
      it "shows the title of the page" do
        expect(page).to have_content("#{@bear_mountain.name} Guests")
      end

      it "shows the names of all guests" do
        expect(page).to_not have_content(@nick.name)
        expect(page).to_not have_content(@megan.name)
        expect(page).to_not have_content(@brian.name)
        expect(page).to_not have_content(@tina.name)
        expect(page).to_not have_content(@nat.name)
        expect(page).to_not have_content(@sal.name)
        expect(page).to_not have_content(@ali.name)
        expect(page).to have_content(@mike.name)
        expect(page).to have_content(@molly.name)
      end

      it "shows if each guest is a pass holder" do
        expect(page).to have_content("Pass Holder: #{@mike.pass_holder ? 'Yes' : 'No'}")
        expect(page).to have_content("Pass Holder: #{@molly.pass_holder ? 'Yes' : 'No'}")
      end

      it "shows the number of days each guest has been active" do
        expect(page).to have_content("Days Active: #{@mike.days_active}")
        expect(page).to have_content("Days Active: #{@molly.days_active}")
      end

      it "can sort guests by name" do
        actual = page.all("h3").map(&:text)
        unsorted = [@molly.name, @mike.name]

        expect(actual).to eq(unsorted)

        click_link "Sort by Name"

        actual = page.all("h3").map(&:text)
        sorted = [@mike.name, @molly.name]

        expect(actual).to eq(sorted)
      end
    end
  end
end

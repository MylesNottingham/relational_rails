require "rails_helper"

RSpec.describe "Resorts Guests Index Page" do
  before :each do
    test_seed
  end

  describe "Mammoth" do
    before :each do
      visit "/resorts/#{@mammoth.id}/guests"
    end

    it "shows the title of the page" do
      expect(page).to have_content("#{@mammoth.name} Guests")
    end

    it "shows the names of all guests" do
      expect(page).to have_content(@nick.name)
      expect(page).to have_content(@megan.name)
      expect(page).to have_content(@brian.name)
      expect(page).to_not have_content(@sal.name)
      expect(page).to_not have_content(@ali.name)
      expect(page).to_not have_content(@mike.name)
      expect(page).to_not have_content(@molly.name)
    end

    it "shows if each guest is a pass holder" do
      expect(page).to have_content("Pass Holder: #{@nick.pass_holder ? 'Yes' : 'No'}")
      expect(page).to have_content("Pass Holder: #{@megan.pass_holder ? 'Yes' : 'No'}")
      expect(page).to have_content("Pass Holder: #{@brian.pass_holder ? 'Yes' : 'No'}")
    end

    it "shows the number of days each guest has been active" do
      expect(page).to have_content("Days Active: #{@nick.days_active}")
      expect(page).to have_content("Days Active: #{@megan.days_active}")
      expect(page).to have_content("Days Active: #{@brian.days_active}")
    end
  end
end

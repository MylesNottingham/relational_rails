require "rails_helper"

RSpec.describe "Guest Index Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
    visit "/guests"
  end

  describe "links" do
    test_for_link_to_guest_index
    test_for_link_to_resort_index
  end

  describe "Body" do
    it "shows the title of the page" do
      expect(page).to have_content("All Pass Holding Guests")
    end

    it "shows the data of all guests" do
      expect(page).to have_content(
        "#{@nick.name}\n"\
        "Pass Holder: #{@nick.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@nick.days_active}\n"\
        "Resort ID: #{@nick.resort_id}"
      )
      expect(page).to have_content(
        "#{@megan.name}\n"\
        "Pass Holder: #{@megan.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@megan.days_active}\n"\
        "Resort ID: #{@megan.resort_id}"
      )
      expect(page).to_not have_content(
        "#{@brian.name}\n"\
        "Pass Holder: #{@brian.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@brian.days_active}\n"\
        "Resort ID: #{@brian.resort_id}"
      )
      expect(page).to_not have_content(
        "#{@tina.name}\n"\
        "Pass Holder: #{@tina.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@tina.days_active}\n"\
        "Resort ID: #{@tina.resort_id}"
      )
      expect(page).to have_content(
        "#{@nat.name}\n"\
        "Pass Holder: #{@nat.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@nat.days_active}\n"\
        "Resort ID: #{@nat.resort_id}"
      )
      expect(page).to have_content(
        "#{@sal.name}\n"\
        "Pass Holder: #{@sal.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@sal.days_active}\n"\
        "Resort ID: #{@sal.resort_id}"
      )
      expect(page).to_not have_content(
        "#{@ali.name}\n"\
        "Pass Holder: #{@ali.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@ali.days_active}\n"\
        "Resort ID: #{@ali.resort_id}"
      )
      expect(page).to have_content(
        "#{@mike.name}\n"\
        "Pass Holder: #{@mike.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@mike.days_active}\n"\
        "Resort ID: #{@mike.resort_id}"
      )
      expect(page).to_not have_content(
        "#{@molly.name}\n"\
        "Pass Holder: #{@molly.pass_holder ? 'Yes' : 'No'}\n"\
        "Days Active: #{@molly.days_active}\n"\
        "Resort ID: #{@molly.resort_id}"
      )
    end
  end
end

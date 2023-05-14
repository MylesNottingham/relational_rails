require "rails_helper"

RSpec.describe "Guest Index Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
    visit "/guests"
  end

  it "shows the title of the page" do
    expect(page).to have_content("All Guests")
  end

  it "shows the names of all guests" do
    expect(page).to have_content(@nick.name)
    expect(page).to have_content(@megan.name)
    expect(page).to have_content(@brian.name)
    expect(page).to have_content(@tina.name)
    expect(page).to have_content(@nat.name)
    expect(page).to have_content(@sal.name)
    expect(page).to have_content(@ali.name)
    expect(page).to have_content(@mike.name)
    expect(page).to have_content(@molly.name)
  end

  it "shows if each guest is a pass holder" do
    expect(page).to have_content("Pass Holder: #{@nick.pass_holder ? 'Yes' : 'No'}")
    expect(page).to have_content("Pass Holder: #{@megan.pass_holder ? 'Yes' : 'No'}")
    expect(page).to have_content("Pass Holder: #{@brian.pass_holder ? 'Yes' : 'No'}")
    expect(page).to have_content("Pass Holder: #{@tina.pass_holder ? 'Yes' : 'No'}")
    expect(page).to have_content("Pass Holder: #{@nat.pass_holder ? 'Yes' : 'No'}")
    expect(page).to have_content("Pass Holder: #{@sal.pass_holder ? 'Yes' : 'No'}")
    expect(page).to have_content("Pass Holder: #{@ali.pass_holder ? 'Yes' : 'No'}")
    expect(page).to have_content("Pass Holder: #{@mike.pass_holder ? 'Yes' : 'No'}")
    expect(page).to have_content("Pass Holder: #{@molly.pass_holder ? 'Yes' : 'No'}")
  end

  it "shows the number of days each guest has been active" do
    expect(page).to have_content("Days Active: #{@nick.days_active}")
    expect(page).to have_content("Days Active: #{@megan.days_active}")
    expect(page).to have_content("Days Active: #{@brian.days_active}")
    expect(page).to have_content("Days Active: #{@tina.days_active}")
    expect(page).to have_content("Days Active: #{@nat.days_active}")
    expect(page).to have_content("Days Active: #{@sal.days_active}")
    expect(page).to have_content("Days Active: #{@ali.days_active}")
    expect(page).to have_content("Days Active: #{@mike.days_active}")
    expect(page).to have_content("Days Active: #{@molly.days_active}")
  end

  it "shows the resort id that each guest belongs to" do
    expect(page).to have_content("Resort ID: #{@nick.resort_id}")
    expect(page).to have_content("Resort ID: #{@megan.resort_id}")
    expect(page).to have_content("Resort ID: #{@brian.resort_id}")
    expect(page).to have_content("Resort ID: #{@tina.resort_id}")
    expect(page).to have_content("Resort ID: #{@nat.resort_id}")
    expect(page).to have_content("Resort ID: #{@sal.resort_id}")
    expect(page).to have_content("Resort ID: #{@ali.resort_id}")
    expect(page).to have_content("Resort ID: #{@mike.resort_id}")
    expect(page).to have_content("Resort ID: #{@molly.resort_id}")
  end
end

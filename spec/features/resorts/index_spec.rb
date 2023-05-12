require "rails_helper"

RSpec.describe "Resort Index Page" do
  before :each do
    @mammoth = Resort.create!(name: "Mammoth", max_capacity: 1000, open_for_season: true)
    @snow_summit = Resort.create!(name: "Snow Summit", max_capacity: 600, open_for_season: true)
    @bear_mountain = Resort.create!(name: "Bear Mountain", max_capacity: 500, open_for_season: true)
  end

  it "shows the title of the page" do
    visit "/resorts"

    expect(page).to have_content("All Resorts")
  end

  it "can see the names of all resorts" do
    visit "/resorts"

    expect(page).to have_content(@mammoth.name)
    expect(page).to have_content(@snow_summit.name)
    expect(page).to have_content(@bear_mountain.name)
  end
end

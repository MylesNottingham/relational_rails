require "rails_helper"

RSpec.describe "Resort Show Page" do
  before :each do
    @snow_summit = Resort.create!(name: "Snow Summit", max_capacity: 600, open_for_season: true)
    @bear_mountain = Resort.create!(name: "Bear Mountain", max_capacity: 500, open_for_season: false)
  end

  it "shows the name of a resort" do
    visit "/resorts/#{@snow_summit.id}"

    expect(page).to have_content(@snow_summit.name)
  end

  it "shows the name of another resort" do
    visit "/resorts/#{@bear_mountain.id}"

    expect(page).to have_content(@bear_mountain.name)
  end

  it "shows the max capacity of a resort" do
    visit "/resorts/#{@snow_summit.id}"

    expect(page).to have_content(@snow_summit.max_capacity)
  end

  it "shows the max capacity of another resort" do
    visit "/resorts/#{@bear_mountain.id}"

    expect(page).to have_content(@bear_mountain.max_capacity)
  end

  it "shows if a resort is open for the season" do
    visit "/resorts/#{@snow_summit.id}"

    expect(page).to have_content(@snow_summit.open_for_season ? "Yes" : "No")
  end

  it "shows if another resort is open for the season" do
    visit "/resorts/#{@bear_mountain.id}"

    expect(page).to have_content(@bear_mountain.open_for_season ? "Yes" : "No")
  end
end

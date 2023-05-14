require "rails_helper"

RSpec.describe "Resort Index Page" do
  before :each do
    mammoth_test_seed
    snow_summit_test_seed
    bear_mountain_test_seed
    visit "/resorts"
  end

  it "shows the title of the page" do
    expect(page).to have_content("All Resorts")
  end

  it "shows names of all resorts with creation date ordered by creation timestamp" do
    expect(page).to have_content(
      "#{@mammoth.name} - #{@mammoth.created_at}\n#{@snow_summit.name} - #{@snow_summit.created_at}"
    )
    expect(page).to have_content(
      "#{@snow_summit.name} - #{@snow_summit.created_at}\n#{@bear_mountain.name} - #{@bear_mountain.created_at}"
    )
  end
end

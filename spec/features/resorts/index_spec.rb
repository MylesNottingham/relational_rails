require "rails_helper"

RSpec.describe "Resort Index Page" do
  before :each do
    test_seed
    visit "/resorts"
  end

  it "shows the title of the page" do
    expect(page).to have_content("All Resorts")
  end

  it "can see the names of all resorts" do
    expect(page).to have_content(@mammoth.name)
    expect(page).to have_content(@snow_summit.name)
    expect(page).to have_content(@bear_mountain.name)
  end
end

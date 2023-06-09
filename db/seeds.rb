# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Guest.destroy_all
Resort.destroy_all

mammoth = Resort.create!(
  name: "Mammoth",
  max_capacity: 1000,
  open_for_season: true,
  created_at: 2.days.ago,
  updated_at: 2.days.ago
)
snow_summit = Resort.create!(
  name: "Snow Summit",
  max_capacity: 600,
  open_for_season: true,
  created_at: 1.day.ago,
  updated_at: 1.day.ago
)
bear_mountain = Resort.create!(
  name: "Bear Mountain",
  max_capacity: 500,
  open_for_season: false
)

mammoth.guests.create!(name: "Nick", pass_holder: true, days_active: 20)
mammoth.guests.create!(name: "Megan", pass_holder: true, days_active: 10)
mammoth.guests.create!(name: "Brian", pass_holder: false, days_active: 15)
mammoth.guests.create!(name: "Tina", pass_holder: false, days_active: 12)

snow_summit.guests.create!(name: "Nat", pass_holder: true, days_active: 30)
snow_summit.guests.create!(name: "Sal", pass_holder: true, days_active: 5)
snow_summit.guests.create!(name: "Ali", pass_holder: false, days_active: 10)

bear_mountain.guests.create!(name: "Molly", pass_holder: false, days_active: 10)
bear_mountain.guests.create!(name: "Mike", pass_holder: true, days_active: 5)

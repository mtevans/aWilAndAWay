# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Venue.create!(
  title: "Food Bank",
  about: "It's a food bank",
  description: "OMG it's a great time, food bank near embarcadero",
  address: "123 folsom drive",
  zip_code: "94111",
  email: "bigSTEVE@gmail.com",
  organizer_id: "2"
)


Venue.create!(
  title: "Boxing Gym Volunteer",
  about: "Keep kids off the streets and help out teaching boxing",
  description: "Here at BigCity boxing we're about giving back to our local community and particularly the future generation. Come by and help out and get to know your neighborhood",
  address: "526 Hickory stree",
  zip_code: "94102",
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: "4"
)


Venue.create!(
  title: "Food Kitchen Server",
  about: "Give food to those in need",
  description: "We need a really long description here, one that can evoke tears but at the same time sound earthy, caring, not synical. Striking that fine balance between fousing on giving back and sounding smug",
  address: "526 Hickory stree",
  zip_code: "94102",
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: "5"
)

Venue.create!(
  title: "After School tutoring",
  about: "Got a background in maths, help kids get their high school diploma",
  description: "We need a really long description here, one that can evoke tears but at the same time sound earthy, caring, not synical. Striking that fine balance between fousing on giving back and sounding smug",
  address: "827 market street",
  zip_code: "94105",
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: "2"
)

Venue.create!(
  title: "Work with some great kids",
  about: "Spend an hour a week, mentoring a special needs child",
  description: "We need a really long description here, one that can evoke tears but at the same time sound earthy, caring, not synical. Striking that fine balance between fousing on giving back and sounding smug",
  address: "526 Near Starbucks",
  zip_code: "94118",
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: "1"
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
  name: "Steve",
  email: "Steve@example.com",
  password: "password",
)

User.create!(
  name: "Steph",
  email: "Steph@example.com",
  password: "password",
)

User.create!(
  name: "Mike",
  email: "Mike@example.com",
  password: "password",
)

User.create!(
  name: "Eric",
  email: "Eric@example.com",
  password: "password",
)

Venue.create!(
  title: "Food Bank",
  about: "It's a food bank",
  description: "OMG it's a great time, food bank near embarcadero",
  address: "123 folsom drive",
  zip_code: "94111",
  email: "bigSTEVE@gmail.com",
  organizer_id: 1
)


Venue.create!(
  title: "Boxing Gym Volunteer",
  about: "Keep kids off the streets and help out teaching boxing",
  description: "Here at BigCity boxing we're about giving back to our local community and particularly the future generation. Come by and help out and get to know your neighborhood",
  address: "526 Hickory stree",
  zip_code: "94102",
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 2
)


Venue.create!(
  title: "Food Kitchen Server",
  about: "Give food to those in need",
  description: "We need a really long description here, like really rediculously, overly verbose description that's going to take up lots of room and test my css skills",
  address: "526 Hickory stree",
  zip_code: "94102",
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 3
)

Venue.create!(
  title: "After School tutoring",
  about: "Got a background in maths, help kids get their high school diploma",
  description: "We need a really long description here, like really rediculously, overly verbose description that's going to take up lots of room and test my css skills",
  address: "827 market street",
  zip_code: "94105",
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 4
)

Venue.create!(
  title: "Work with some great kids",
  about: "Spend an hour a week, mentoring a special needs child",
  description: "We need a really long description here, like really rediculously, overly verbose description that's going to take up lots of room and test my css skills",
  address: "526 Near Starbucks",
  zip_code: "94118",
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 1
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 2,
  date: Date.today,
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 2,
  date: Date.tomorrow,
  start_time: 1600,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 3,
  date: Date.today,
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 3,
  date: Date.tomorrow,
  start_time: 1600,
  end_time: 1800,
)

Subscription.create!(
  volunteer_id: 1,
  occasion_id: 1,
)

Subscription.create!(
  volunteer_id: 1,
  occasion_id: 2,
)

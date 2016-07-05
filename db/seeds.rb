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
  lat: 37.789586,
  lng: -122.395673,
  email: "bigSTEVE@gmail.com",
  organizer_id: 1,
  modal_status: false,
  category: "People With Disabilities"
)


Venue.create!(
  title: "Boxing Gym Volunteer",
  about: "Keep kids off the streets and help out teaching boxing",
  description: "Here at BigCity boxing we're about giving back to our local community and particularly the future generation. Come by and help out and get to know your neighborhood",
  address: "526 Hickory stree",
  lat: 37.795169,
  lng: -122.409842,
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 2,
  modal_status: false,
  category: "Children & Youth"
)


Venue.create!(
  title: "Food Kitchen Server",
  about: "Give food to those in need",
  description: "We need a really long description here, like really rediculously, overly verbose description that's going to take up lots of room and test my css skills",
  address: "526 Hickory stree",
  lat: 37.800315,
  lng: -122.417583,
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 3,
  modal_status: false,
  category: "Children & Youth"
)

Venue.create!(
  title: "After School tutoring",
  about: "Got a background in maths, help kids get their high school diploma",
  description: "We need a really long description here, like really rediculously, overly verbose description that's going to take up lots of room and test my css skills",
  address: "827 market street",
  lat: 37.803053,
  lng: -122.411532,
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 4,
  modal_status: false,
  category: "Children & Youth"
)

Venue.create!(
  title: "Work with some great kids",
  about: "Spend an hour a week, mentoring a special needs child",
  description: "We need a really long description here, like really rediculously, overly verbose description that's going to take up lots of room and test my css skills",
  address: "526 Near Starbucks",
  lat: 37.787090,
  lng: -122.433017,
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 1,
  modal_status: false,
  category: "Children & Youth"
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


Venue.create!(
  title: "Foodee Bank",
  about: "It's a food bank",
  description: "OMG it's a great time, food bank near embarcadero",
  address: "123 folsom drive",
  lat: 37.789586,
  lng: -122.395673,
  email: "bigSTEVE@gmail.com",
  organizer_id: 1,
  modal_status: false,
  category: "Seniors"
)
Venue.create!(
  title: "Foodeeee Bank",
  about: "It's a food bank",
  description: "OMG it's a great time, food bank near embarcadero",
  address: "123 folsom drive",
  lat: 37.789586,
  lng: -122.395673,
  email: "bigSTEVE@gmail.com",
  organizer_id: 1,
  modal_status: false,
  category: "Seniors"
)
Venue.create!(
  title: "Foodeeeee Bank",
  about: "It's a food bank",
  description: "OMG it's a great time, food bank near embarcadero",
  address: "123 folsom drive",
  lat: 37.789586,
  lng: -122.395673,
  email: "bigSTEVE@gmail.com",
  organizer_id: 1,
  modal_status: false,
  category: "Seniors"
)
Venue.create!(
  title: "Foodeeeeee Bank",
  about: "It's a food bank",
  description: "OMG it's a great time, food bank near embarcadero",
  address: "123 folsom drive",
  lat: 37.789586,
  lng: -122.395673,
  email: "bigSTEVE@gmail.com",
  organizer_id: 1,
  modal_status: false,
  category: "Seniors"
)

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


Venue.create!(
  title: "Food Bank",
  about: "Serve up some food",
  description: "Come on down and interact with a great group of people who'll really value you generously offering up your time.",
  address: "123 folsom drive",
  lat: 37.789586,
  lng: -122.395673,
  email: "bigSTEVE@gmail.com",
  organizer_id: 1,
  modal_status: false,
  category: "Homeless & Housing"
)

Occasion.create!(
  organizer_id: 1,
  venue_id: 1,
  date: Date.tomorrow,
  start_time: 1600,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 1,
  venue_id: 1,
  date: Date.today,
  start_time: 1200,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 1,
  venue_id: 1,
  date: Date.today.advance(:days => 2),
  start_time: 1000,
  end_time: 1200,
)

Occasion.create!(
  organizer_id: 1,
  venue_id: 1,
  date: Date.today.advance(:days => 4),
  start_time: 1000,
  end_time: 1200,
)


Venue.create!(
  title: "Boxing Gym Volunteer",
  about: "Keep kids off the streets and help out teaching boxing",
  description: "Here at BigCity boxing we're about giving back to our local community and particularly the future generation. Come by and help out and get to ktoday your neighborhood",
  address: "526 Hickory stree",
  lat: 37.795169,
  lng: -122.409842,
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 2,
  modal_status: false,
  category: "Children & Youth"
)

Occasion.create!(
  organizer_id: 1,
  venue_id: 2,
  date: Date.today.advance(:days => 3),
  start_time: 1000,
  end_time: 1200,
)
Occasion.create!(
  organizer_id: 1,
  venue_id: 2,
  date: Date.today,
  start_time: 1200,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 1,
  venue_id: 2,
  date: Date.today.advance(:days => 5),
  start_time: 1500,
  end_time: 1700,
)

Occasion.create!(
  organizer_id: 1,
  venue_id: 2,
  date: Date.today.advance(:days => 7),
  start_time: 1700,
  end_time: 1900,
)


Venue.create!(
  title: "AYSO Soccer Coach",
  about: "Coach some kids for after school soccer",
  description: "",
  address: "526 Hickory stree",
  lat: 37.810315,
  lng: -122.417583,
  email: "PunchinPeter@BigCityBoxing.com",
  organizer_id: 2,
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
  organizer_id: 2,
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
  email: "Steph@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Children & Youth"
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 3,
  date: Date.today,
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 3,
  date: Date.tomorrow,
  start_time: 1600,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 3,
  date: Date.today.advance(:days => 2),
  start_time: 1400,
  end_time: 1500,
)


Occasion.create!(
  organizer_id: 2,
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
  title: "Senior Aid",
  about: "Help out at the local retirement",
  description: "play board games and have some fun.",
  address: "123 folsom drive",
  lat: 37.589586,
  lng: -122.394673,
  email: "GlenOakRetiremet@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Seniors"
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 4,
  date: Date.tomorrow,
  start_time: 1600,
  end_time: 1800
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 4,
  date: Date.today.advance(:days => 13),
  start_time: 1600,
  end_time: 1800
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 4,
  date: Date.today.advance(:days => 3),
  start_time: 1600,
  end_time: 1800
)

Venue.create!(
  title: "Clean Up the Park",
  about: "spend 30 mins making our streets and parks look great",
  description: "It's a great group that goes out every tuesday, get together for drinks afterwards",
  address: "123 folsom drive",
  lat: 37.784586,
  lng: -122.395273,
  email: "bigSTEVE@gmail.com",
  organizer_id: 2,
  modal_status: false,
  category: "Enviroment"
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 5,
  date: Date.today.advance(:days => 1),
  start_time: 1600,
  end_time: 1800
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 5,
  date: Date.today.advance(:days => 3),
  start_time: 1400,
  end_time: 1500
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 5,
  date: Date.today.advance(:days => 9),
  start_time: 1500,
  end_time: 1600
)

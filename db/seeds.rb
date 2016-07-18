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
  password: "password"
)

User.create!(
  name: "Steph",
  email: "Steph@example.com",
  password: "password"
)

User.create!(
  name: "Mike",
  email: "Mike@example.com",
  password: "password"
)

Venue.create!(
  title: "Face Painter",
  about: "Paint some faces at Berkeley Humane’s adopt-a-thon and street fair! ",
  description: "Be a hero to the animals and volunteer at Berkeley Humane’s adopt-a-thon and street fair! We are looking for a volunteer with face painting experience to donate their time at Bark (& Meow) Around the Block!",
  address: "2804 San Pablo Ave, Berkeley, CA 94702",
  url: "",
  lat: 37.856219,
  lng: -122.287944,
  email: "Steve@example.com",
  organizer_id: 1,
  modal_status: false,
  category: "Children & Youth"
)


Venue.create!(
  title: "Mentor",
  about: "Unleash the potential that lies within every young person",
  description: "Assist youth in making positive choices; Explore careers and higher education; Help improve youth's grades; Assist youth's in setting goals for the future ; Be a positive role model and friend; Mentoring boys and girls is a wonderful opportunity to give back to the community",
  address: "1251-1299 28th Street, Oakland, CA 94608",
  url: "",
  lat: 37.820873,
  lng: -122.285055,
  email: "beAMentor@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Children & Youth"
)

Venue.create!(
  title: "Troop Leader",
  about: "Mentor, Lead, Inspire",
  description: "As a Girl Scout volunteer, you’ll introduce girls to new experiences that show them they’re capable of more than they ever imagined. You’ll be their cheerleader, their guide, and the mentor that shows them that anything is possible. The memories you’ll share will last long after the meeting is over.",
  address: "24 Fortuna Avenue, San Francisco, CA 94115",
  url: "",
  lat: 37.780206,
  lng: -122.442416,
  email: "NobodyScoutsHarder@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Children & Youth"
)

Venue.create!(
  title: "Reading Tutor",
  about: "Help young children catch up to reading at their grade level",
  description: "Children who do not do well in Kindergarten often do not read at grade level by third grade -- Children who are not reading at grade level by third grade often become a school dropout -- 30% of Oakland Youth do not graduate from high school.",
  address: "433 Natoma Street, San Francisco, CA 94103",
  url: "",
  lat: 37.780578,
  lng: -122.406089,
  email: "TheirThereThey're@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Children & Youth"
)

Venue.create!(
  title: "Wish Grantor",
  about: "Go in and interview the wish kids to determine their wishes.",
  description: "Make-A-Wish grants the wishes of children with severe medical conditions to enrich the human experience with hope, strength, and joy. You will interview the wish kids to determine their wishes, and act as a liaison between the families and the Make-a-Wish staff to make the wishes happen.",
  address: "335 Leavenworth St, San Francisco, CA 94102",
  url: "",
  lat: 37.784214,
  lng: -122.414662,
  email: "MakeAWish@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Children & Youth"
)

Venue.create!(
  title: "Hospice Volunteer",
  about: "Meeting the physical, emotional and spiritual needs of patients and their families.",
  description: "To become a hospice volunteer at Hutter Care at Home the greatest gift one can offer is their time, caring nature and willingness to be present. Experience is not required. Volunteers are trained to help with the physical, emotional and spiritual needs of hospice patients and their families.",
  address: "2738 Judah Street, San Francisco, CA 94122",
  url: "",
  lat: 37.761328,
  lng: -122.491678,
  email: "HutterHomeh@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Seniors"
)

Venue.create!(
  title: "Tax-Aide Counsellor",
  about: "Provide free tax preparation assistance to low and middle-income Seniors (60+)",
  description: "This program provides free tax preparation assistance to low and middle-income seniors (60+). Helping others sort through stacks of paperwork and lines of numbers is what the free AARP Tax-Aide Volunteer Program is all about. ",
  address: "1 Edgehill Way, San Francisco, CA 94127",
  url: "",
  lat: 37.743475,
  lng: -122.459896,
  email: "TommysTaxHaven@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Seniors"
)

Venue.create!(
  title: "Computers Teacher",
  about: "Help elders learn about computers",
  description: "Guide Seniors through rigorous training in Ruby, Rails and Javascript so they can create their own wonderful websites",
  address: "580 Capp Street,San Francisco, CA 94110",
  url: "",
  lat: 37.757528,
  lng: -122.418035,
  email: "Steph@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Seniors"
)

Venue.create!(
  title: "Arts & Crafts Leader",
  about: "Use your creativity and enthusiasm to lead arts and crafts classes",
  description: "Use your creativity and enthusiasm to lead arts and crafts classes. Martinelli House provides community events to its independent senior citizens to enhance and enrich their lives and socialization",
  address: "4095 Cesar Chavez Street, San Francisco, CA 94131",
  url: "",
  lat: 37.747349,
  lng: -122.431081,
  email: "Steph@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Seniors"
)

Venue.create!(
  title: "Part-Time Chaplain",
  about: "Lead the spiritual regeneration of men who have substance abuse issues",
  description: "This position is critical to the spiritual regeneration of men who have substance abuse issues, and who are seeking help to change their lives...and find God in the process! Miracles happen here every day!",
  address: "Zohar, 131 Parnassus Avenue, San Francisco, CA 94117",
  url: "",
  lat: 37.764585,
  lng: -122.450650,
  email: "Steph@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Homeless & Housing"
)

Venue.create!(
  title: "Food Kitchen Aide",
  about: "Prepare hot meals to be served in our Free Dining Room",
  description: "Come help our chefs and kitchen staff prepare food for the following day's lunch service in one of Northern California's most distressed neighborhoods",
  address: "143 Gladeview Way, San Francisco, CA 94131",
  url: "",
  lat: 37.752375,
  lng: -122.450639,
  email: "FoodKitchen@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Homeless & Housing"
)

Venue.create!(
  title: "Dining Room Volunteer",
  about: "Help prepare and provide around 3000 meals each day to SF's Homeless",
  description: "Come help our chefs and kitchen staff prepare food for the following day's lunch service in one of Northern California's most distressed neighborhoods",
  address: "115 Germania Street, San Francisco, CA 94117",
  url: "",
  lat: 37.770560,
  lng: -122.430898,
  email: "FoodKitchen@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Homeless & Housing"
)

Venue.create!(
  title: "Health Care Volunteer",
  about: "Lend a helping hand at the Free Health Car Clinic",
  description: "We are specifically in need of adult medicine physicians, internal medicine physicians, and nurse practitioners. We are also looking for medical assistants and student interns who are Spanish-speaking.",
  address: "3433 Scott Street, San Francisco, CA 94123",
  url: "",
  lat: 37.801627,
  lng: -122.441541,
  email: "NorthSideClinic@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Homeless & Housing"
)
# ----------------------------------------------------- calling it a night-------
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
  description: "Come on out and coach some soccer. Exciting group of kids, lots of fun",
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

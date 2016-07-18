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
Venue.create!(
  title: "GED Classroom Volunteer",
  about: "Work with the homeless to attain their GED",
  description: "Here at Shackleton House we have a motivated group that's looking to improve their situation and fully integrate back into society. Please come help them in that pursuit by tutoring them to attain their GED",
  address: "3433 Scott Street, San Francisco, CA 94123",
  url: "",
  lat: 37.801627,
  lng: -122.441541,
  email: "NorthSideClinic@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Homeless & Housing"
)

Venue.create!(
  title: "Volunteer Nurse",
  about: "Volunteer with our medical team at our MDA camp",
  description: "Muscular Dystrophy Association's summer camp program is offered free of charge to our client families who have a child (ages 6 to 17) living with muscular dystrophy and other muscle-debilitating diseases.",
  address: "679 McAllister Street, San Francisco, CA 9410",
  url: "",
  lat: 37.779542,
  lng: -122.422627,
  email: "Sarah@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "People With Disabilities"
)

Venue.create!(
  title: "Helper",
  about: "Help special needs children in the pool",
  description: "We strive to help kids with special needs feel pride and self-confidence while helping to build stronger bodies and friendships. Volunteers work one-on-one with our swimmers in the water under the supervision of a physical therapist.",
  address: "2542 29th Avenue, San Francisco, CA 94116",
  url: "",
  lat: 37.739914,
  lng: -122.485799,
  email: "Richard@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "People With Disabilities"
)

Venue.create!(
  title: "Hospice Volunteer",
  about: "Support the elderly and the sick",
  description: "The volunteer’s role is greatly rewarding and perfect for those interested in working with older adults, working in the healthcare field, or having a general passion of helping others.",
  address: "1253 Green Street, San Francisco, CA 94109",
  url: "",
  lat: 37.797992,
  lng: -122.419709,
  email: "Richard@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "People With Disabilities"
)

Venue.create!(
  title: "Grant Writer",
  about: "Research Grant for families who have children with special needs",
  description: "We are doing great things for families who have children with special needs, but we could do so much more with your help! Help parents get the needed break in raising a child with special needs",
  address: "1412 Willard Street, San Francisco, CA 94117",
  url: "",
  lat: 37.763938,
  lng: -122.453870,
  email: "WillardStreetHealth@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "People With Disabilities"
)

Venue.create!(
  title: "Bingo Assistant",
  about: "Volunteer to help assist with our bingo activity",
  description: "St. Francisc Living Room is looking for volunteers to assist with our bingo. Duties include prepping and closing of the activity, supervising players, calling out the numbers and giving out the prizes. St. Francis Living Room serves as a safe place for low income and homeless seniors to relax and socialize with one another.",
  address: "388 Texas Street, San Francisco, CA 94107",
  url: "",
  lat: 37.761571,
  lng: -122.395602,
  email: "BingoBaby@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Homeless & Housing"
)

Venue.create!(
  title: "Watch the Wild",
  about: "Observe and report what is taking place in your community, from trees and plants to weather and wildlife activity",
  description: "Observe and report what is taking place in your community, from trees and plants to weather and wildlife activity. In as little as ten minutes, your observations help us to understand how our eco-systems are changing and helps us to adapt for the future.",
  address: "3664 18th Street, San Francisco, CA 94110",
  url: "",
  lat: 37.761631,
  lng: -122.425202,
  email: "watchthewild@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Environment"
)

Venue.create!(
  title: "Community Gardening",
  about: "Transform our neighborhood by beutifying neglected patches of land",
  description: "Transform our neighborhood by beutifying neglected patches of land. Work alongside a great group of individuals under the supervision of a head gardener.",
  address: "2107 14th Avenue, San Francisco, CA 94116",
  url: "",
  lat: 37.748601,
  lng: -122.470693,
  email: "watchthewild@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Environment"
)

Venue.create!(
  title: "Community Gardening",
  about: "Transform our neighborhood by beutifying neglected patches of land",
  description: "Transform our neighborhood by beutifying neglected patches of land. Work alongside a great group of individuals under the supervision of a head gardener.",
  address: "2107 14th Avenue, San Francisco, CA 94116",
  url: "",
  lat: 37.748601,
  lng: -122.470693,
  email: "watchthewild@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Environment"
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

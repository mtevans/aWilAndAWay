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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468891500/Children_Youth/FacePainter.jpg",
  lat: 37.856219,
  lng: -122.287944,
  email: "Steve@example.com",
  organizer_id: 1,
  modal_status: false,
  category: "Children & Youth",
)


Venue.create!(
  title: "Mentor",
  about: "Unleash the potential that lies within every young person",
  description: "Assist youth in making positive choices; Explore careers and higher education; Help improve youth's grades; Assist youth's in setting goals for the future ; Be a positive role model and friend; Mentoring boys and girls is a wonderful opportunity to give back to the community",
  address: "1251-1299 28th Street, Oakland, CA 94608",
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1470114195/slider-mentor_sixvjr.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468891499/Children_Youth/GirlScouts.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468891499/Children_Youth/readingtutor.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468891500/Children_Youth/makeawish.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894985/hospice-volunteer_x9w7p7.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894986/tax-aide_ogixft.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894986/computersTeacher_lguvyu.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894985/arts_crafts_a2cvzv.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894984/poart-time-Chaplain_kpvmin.jpg",
  lat: 37.764585,
  lng: -122.450650,
  email: "Steph@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Homeless & Housing"
)


Venue.create!(
  title: "Dining Room Volunteer",
  about: "Help prepare and provide around 3000 meals each day to SF's Homeless",
  description: "Come help our chefs and kitchen staff prepare food for the following day's lunch service in one of Northern California's most distressed neighborhoods",
  address: "115 Germania Street, San Francisco, CA 94117",
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894983/food-kitchen-prep_cnaeet.jpg",
  lat: 37.770560,
  lng: -122.430898,
  email: "FoodKitchen@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Homeless & Housing"
)

Venue.create!(
  title: "Health Care Volunteer",
  about: "Lend a helping hand at the Free Health Care Clinic",
  description: "We are specifically in need of adult medicine physicians, internal medicine physicians, and nurse practitioners. We are also looking for medical assistants and student interns who are Spanish-speaking.",
  address: "3433 Scott Street, San Francisco, CA 94123",
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894984/HealthCareVolunteer_cjqnan.jpg",
  lat: 37.801627,
  lng: -122.441541,
  email: "NorthSideClinic@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Homeless & Housing"
)

Venue.create!(
  title: "GED Classroom Volunteer",
  about: "Work with the homeless to attain their GED",
  description: "Here at Shackleton House we have a motivated group that's looking to improve their situation and fully integrate back into society. Please come help them in that pursuit by tutoring them to attain their GED",
  address: "3433 Scott Street, San Francisco, CA 94123",
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1470114582/teacher_sldpfg.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894986/volunteer-nurse_kl60zb.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894985/Helper_oig8up.jpg",
  lat: 37.739914,
  lng: -122.485799,
  email: "Richard@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "People With Disabilities"
)

Venue.create!(
  title: "Hospice Assistant",
  about: "Support the elderly and the sick",
  description: "The volunteer’s role is greatly rewarding and perfect for those interested in working with older adults, working in the healthcare field, or having a general passion of helping others.",
  address: "1253 Green Street, San Francisco, CA 94109",
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894986/hospiceVolunteer1_qfoejq.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894985/grant-writer_pqc0s9.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894986/bingo_lzl2l7.jpg",
  lat: 37.761571,
  lng: -122.395602,
  email: "BingoBaby@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Seniors"
)

Venue.create!(
  title: "Watch the Wild",
  about: "Observe and report what is taking place in your community, from trees and plants to weather and wildlife activity",
  description: "Observe and report what is taking place in your community, from trees and plants to weather and wildlife activity. In as little as ten minutes, your observations help us to understand how our eco-systems are changing and helps us to adapt for the future.",
  address: "3664 18th Street, San Francisco, CA 94110",
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1470114721/Delores_Park_9276_cyzeyo.jpg",
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
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894984/community-gardening_uejce5.jpg",
  lat: 37.748601,
  lng: -122.470693,
  email: "watchthewild@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Environment"
)

Venue.create!(
  title: "Beach Clean-up",
  about: "Come on down and help save the beach!",
  description: "Drop-in and groups. We also encourage participants to bring their own gloves, grabbers, or buckets. Come on down and help save the beach!",
  address: "2474 Great Highway, San Francisco, CA 94116",
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894984/beach-cleanup_obidfm.jpg",
  lat: 37.740389,
  lng: -122.506227,
  email: "PurellDaBeach@example.com",
  organizer_id: 3,
  modal_status: false,
  category: "Environment"
)


Venue.create!(
  title: "Volunteer Diver",
  about: "Assist with the underwater maintenance of aquatic exhibits",
  description: "Volunteer Divers assist with the underwater maintenance of aquatic exhibits, including underwater vacuuming and scrubbing. Will also set-up and break-down vacuum pumps, prepare food, perform broadcast feedings, and assist with in-water sevengill shark target feeding.",
  address: "PIER 39, 2 Beach St, San Francisco, CA 94133",
  url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1468894983/volunteer_diver_mbloaz.jpg",
  lat: 37.808165,
  lng: -122.409519,
  email: "sharkMcSharkface@example.com",
  organizer_id: 2,
  modal_status: false,
  category: "Environment"
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
  date: Date.tomorrow,
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

Occasion.create!(
  organizer_id: 2,
  venue_id: 2,
  date: Date.today.advance(:days => 3),
  start_time: 1900,
  end_time: 2100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 2,
  date: Date.today.advance(:days => 5),
  start_time: 1700,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 2,
  date: Date.today.advance(:days => 6),
  start_time: 1700,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 2,
  date: Date.today.advance(:days => 10),
  start_time: 1900,
  end_time: 2100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 3,
  date: Date.today.advance(:days => 4),
  start_time: 1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 3,
  date: Date.today.advance(:days => 6),
  start_time: 1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 3,
  date: Date.today.advance(:days => 20),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 3,
  date: Date.today.advance(:days => 25),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 4,
  date: Date.today.advance(:days => 7),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 4,
  date: Date.today.advance(:days => 8),
  start_time: 1300,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 4,
  date: Date.today.advance(:days => 9),
  start_time: 1500,
  end_time: 1600,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 4,
  date: Date.today.advance(:days => 10),
  start_time: 1500,
  end_time: 1600,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 5,
  date: Date.today.advance(:days => 14),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 5,
  date: Date.today.advance(:days => 15),
  start_time: 1000,
  end_time: 1100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 5,
  date: Date.today.advance(:days => 16),
  start_time: 1000,
  end_time: 1100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 5,
  date: Date.today.advance(:days => 17),
  start_time: 1000,
  end_time: 1100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 6,
  date: Date.today.advance(:days => 9),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 6,
  date: Date.today.advance(:days => 10),
  start_time: 1600,
  end_time: 1700,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 6,
  date: Date.today.advance(:days => 11),
  start_time: 1600,
  end_time: 1700,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 6,
  date: Date.today.advance(:days => 12),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 7,
  date: Date.today,
  start_time: 1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 7,
  date: Date.today.advance(:days => 1),
  start_time: 1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 7,
  date: Date.today.advance(:days => 2),
  start_time: 1900,
  end_time: 2000,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 7,
  date: Date.today.advance(:days => 24),
  start_time: 1900,
  end_time: 2000,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 8,
  date: Date.today.advance(:days => 23),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 8,
  date: Date.today.advance(:days => 25),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 8,
  date: Date.today.advance(:days => 29),
  start_time: 1200,
  end_time: 1300,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 8,
  date: Date.today.advance(:days => 30),
  start_time: 1200,
  end_time: 1300,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 9,
  date: Date.today.advance(:days => 14),
  start_time: 1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 9,
  date: Date.today.advance(:days => 15),
  start_time: 1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 9,
  date: Date.today.advance(:days => 16),
  start_time: 1600,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 9,
  date: Date.today.advance(:days => 17),
  start_time: 1600,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 10,
  date: Date.today.advance(:days => 1),
  start_time: 1000,
  end_time: 1100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 10,
  date: Date.today.advance(:days => 4),
  start_time: 1000,
  end_time: 1100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 10,
  date: Date.today.advance(:days => 5),
  start_time: 1200,
  end_time: 1300,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 10,
  date: Date.today.advance(:days => 8),
  start_time: 1200,
  end_time: 1300,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 11,
  date: Date.today.advance(:days => 18),
  start_time: 1300,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 11,
  date: Date.today.advance(:days => 19),
  start_time: 1300,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 11,
  date: Date.today.advance(:days => 19),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 11,
  date: Date.today.advance(:days => 21),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 12,
  date: Date.today.advance(:days => 7),
  start_time: 1600,
  end_time: 1700,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 12,
  date: Date.today.advance(:days => 11),
  start_time: 1600,
  end_time: 1700,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 12,
  date: Date.today.advance(:days => 21),
  start_time: 1600,
  end_time: 1700,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 12,
  date: Date.today.advance(:days => 26),
  start_time: 1500,
  end_time: 1600,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 13,
  date: Date.today.advance(:days => 22),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 13,
  date: Date.today.advance(:days => 27),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 13,
  date: Date.today.advance(:days => 28),
  start_time: 1200,
  end_time: 1300,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 13,
  date: Date.today.advance(:days => 30),
  start_time: 1200,
  end_time: 1300,
)


Occasion.create!(
  organizer_id: 3,
  venue_id: 14,
  date: Date.today.advance(:days => 9),
  start_time:1900,
  end_time: 2000,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 14,
  date: Date.today.advance(:days => 12),
  start_time: 1300,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 14,
  date: Date.today.advance(:days => 17),
  start_time: 1900,
  end_time: 2000,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 14,
  date: Date.today.advance(:days => 18),
  start_time: 2000,
  end_time: 2100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 15,
  date: Date.today.advance(:days => 3),
  start_time:1400,
  end_time: 15000,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 15,
  date: Date.today.advance(:days => 21),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 15,
  date: Date.today.advance(:days => 24),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 15,
  date: Date.today.advance(:days => 27),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 16,
  date: Date.today.advance(:days => 14),
  start_time:1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 16,
  date: Date.today.advance(:days => 15),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 16,
  date: Date.today.advance(:days => 22),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 16,
  date: Date.today.advance(:days => 29),
  start_time: 1800,
  end_time: 1900,
)


Occasion.create!(
  organizer_id: 2,
  venue_id: 17,
  date: Date.today.advance(:days => 2),
  start_time:1200,
  end_time: 1300,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 17,
  date: Date.today.advance(:days => 16),
  start_time: 1300,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 17,
  date: Date.today.advance(:days => 18),
  start_time: 1200,
  end_time: 1300,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 17,
  date: Date.today.advance(:days => 19),
  start_time: 1300,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 18,
  date: Date.today,
  start_time: 2000,
  end_time: 2100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 18,
  date: Date.today.advance(:days => 2),
  start_time: 2000,
  end_time: 2100,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 18,
  date: Date.today.advance(:days => 20),
  start_time: 1900,
  end_time: 2000,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 18,
  date: Date.today.advance(:days => 23),
  start_time: 1900,
  end_time: 2000,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 19,
  date: Date.today.advance(:days => 14),
  start_time: 1300,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 19,
  date: Date.today.advance(:days => 15),
  start_time: 1300,
  end_time: 1400,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 19,
  date: Date.today.advance(:days => 17),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 19,
  date: Date.today.advance(:days => 28),
  start_time: 1400,
  end_time: 1500,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 20,
  date: Date.today.advance(:days => 11),
  start_time: 1600,
  end_time: 1700,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 20,
  date: Date.today.advance(:days => 13),
  start_time: 1600,
  end_time: 1700,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 20,
  date: Date.today.advance(:days => 14),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 2,
  venue_id: 20,
  date: Date.today.advance(:days => 20),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 21,
  date: Date.today,
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 21,
  date: Date.today.advance(:days => 16),
  start_time: 1700,
  end_time: 1800,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 21,
  date: Date.today.advance(:days => 22),
  start_time: 1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 21,
  date: Date.today.advance(:days => 25),
  start_time: 1800,
  end_time: 1900,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 22,
  date: Date.today.advance(:days => 6),
  start_time: 1900,
  end_time: 2000,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 22,
  date: Date.today.advance(:days => 8),
  start_time: 1000,
  end_time: 1100,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 22,
  date: Date.today.advance(:days => 10),
  start_time: 1000,
  end_time: 1100,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 22,
  date: Date.today.advance(:days => 15),
  start_time: 1000,
  end_time: 1100,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 23,
  date: Date.today.advance(:days => 9),
  start_time: 1200,
  end_time: 1300,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 23,
  date: Date.today.advance(:days => 15),
  start_time: 1100,
  end_time: 1200,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 23,
  date: Date.today.advance(:days => 19),
  start_time: 1100,
  end_time: 1200,
)

Occasion.create!(
  organizer_id: 3,
  venue_id: 23,
  date: Date.today.advance(:days => 26),
  start_time: 1200,
  end_time: 1300,
)


Subscription.create!(
  volunteer_id:  1,
  occasion_id: 1,
)


Subscription.create!(
  volunteer_id:  1,
  occasion_id: 45,
)

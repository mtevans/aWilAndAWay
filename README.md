URL: http://awillandaway.herokuapp.com/#/?_k=erhdcc   sign in as new user and click on the boxing gym to see functionality.
## Minimum Viable Product

aWillAndAWay is a website that connects people looking to volunteer for local charities or communities as well as those looking for volunteers. The idea is to have a single page app for all functionality.

There will be an "venue" which will have a description of what one is volunteering for and contact information, there will be an Occasion, as if you volunteer on a monday at 4pm and fridays and 5pm, that's two separate occasions that you are signing up for. This signing up happens through a join table, a subscription, which links a user to an occasion and through that a venue.


- [x] Account authentication using BCRYPT hashing (unless simpler alternative is shown to use before starting.)
- [x] Account creation and login
- [x] Occasion/Venue browsing by time, date, location
- [x] Venue location using Google Map API
- [x] User can volunteer and cancel for an occasion they've volunteered for.
- [x] User show page has Occasions volunteered for.
- [x] Venue show page has button which sends you to Occasion times of that Venue.
- [x] Single page implementation and nested associations.

## Design Docs
 put in wire frames and schema tables

## API endpoints
``` ruby
  Rails.application.routes.draw do
    root to : "static_pages#root"
    namespace :api, defaults: {format: :json} do
      resources :venues, only: [:index, :show]
      resources :occasion, only: [:index :show]
      resource :user, only: [:show, :create, :destroy]
      resource :session, only: [:create, :destroy]
    end
  end
```

## Components
  - app  
    - Venue
      - VenueIndex
      - VenueIndexItem
    - navigator

    - header
      - signin
      - signout
      - sign up
      - userItem
      - logo
    - favorites
      - favorite index
      - favorite item
    - splash
      - splash_image
      - splash logo
      - explore
    - home_description
    - footer


## Implementation Timeline


### Phase 1: User Authentication, Event Model and JSON API (1.5 days)
- [x] Setup basic flux arichtecture(i.e. the app.jsx file) using React Router to allow for sign   in, sign out, and sign up functions.
- [x]  Using BCrypt, implement a basic user authentication system.
- [x] Should be single page, and have pop up windows.
- [x] Signup/login will change the buttons in the header to that users email and sign out.  All     user/session actions will bring us to a basic page containing the app's root React
component.

[Details][phase-one]


### Phase 2: Flux Architecture, Venue index, show (2 days)
- [x] populate index page with venues.
- [x] allow user to click on index page and go through steps of signing up through a modal
- [x] have volunteer button switch to cancel if they've already volunteered for that occasion.
- [x] click cancel and have a user delete that session, button switch back to volunteer.
- [x] Implement a map for each event and index with Google's Map Api.

[Details][phase-two]

### Phase 3: Volunteer and cancel your subscriptions. (1 days)
- [x]  Go to users show page and click and cancel events.

### Phase 4: Occasion and Venue searching and Users Pages (3 days)
- [x] Can search by time
- [x] Can search by location
- [x] Can searh by date
- [x] user show pags has list of things they've voluntered for and can cancel at that stage.


[Details][phase-three]



[Details][phase-four]

### Phase 4: Set up demo user and edit css to refine user experience (1.5 days)



#BONUS
  1. if lots of time to spare: allow a user to create a Venue with multiple Occasions and delete and edit if from their user page, and see which users have signed up to it on the Occasion Show page.
  2. add comments on Venue page.
  3. With search results, only picture and title come up and then 'about' text comes up when hovering over.
  4. a counter on how many search results there are.
  5. multiple users logged in at the same time.
  6. add optional image upload for user, show the image as the clickable icon in header that gets them to thier user show page.
# aWilAndAWay
# aWilAndAWay

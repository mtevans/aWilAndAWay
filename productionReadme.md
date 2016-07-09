
# A Will And A Way
[AWillAndAWay][WillandAWay]

[WillandAWay]: http://awillandaway.herokuapp.com

AWillAndAWay is a web application that matches volunteers with charities. It uses Ruby and rails on the backend, a PostgreSQL database, and a React.js with a Flux architectural framework on the frontend.
## Features & Implementation


### Just One Page
AWillAndAWay is a single page app that keeps all of its content on page through the React Router. As a user navigates the website, all relevant data such as their credentials, their volunteer schedule, as well as any Charity pages they've created are managed in local stores. All of this information is managed through a Rails API serving JSON.

### Sign Up

![tag screenshot](/docs/signup.png)

### Log In
![tag screenshot](/docs/login.png)

### Home Page
When a user is logged in.

![tag screenshot](/docs/homepage.png)

### Index Page
When a user is not logged in. Only difference is the header, check homepage screenshot from above for difference.


![tag screenshot](/docs/indexpage.png)

### Filtering Through charities

The primary search feature is done through zooming in and out through the google maps display. Every time a user zooms, a search is done through the Store of all the charities whose coordinates are still within the confines of the map coordinates.

Further filtering can be done through time, date and charity category.

![tag screenshot](/docs/filter.png)

### Volunteering for a charity

There are four tables in the database, Venues, Occasions, Subscriptions and Users.

The Venues table contains information about what the charity is about, contact information such as location and contact e-mail address, as well as a description of what the charity is about.

An Occasion is the time and date at which the charity is offering volunteer opportunities.

A Subscription is like a ticket, it's the join table that connects a user to an occasion, and it is through associations on the backend that we can  link a User to an Occasion and Venue.

When a user volunteers for a charity the database just creates a new subscription holding the occasion id and the user id.


### Creating a Venue
A user can register their address by zooming in on a location and placing a marker. From which we can use google maps geocoder to extract their address from the coordinates of the marker

```js
getAddress(){
  let lat = this.marker.position.lat();
  let lng = this.marker.position.lng();
  var latlng = new google.maps.LatLng(lat, lng);
    var address;
    var geocoder = new google.maps.Geocoder();
    let that = this
    geocoder.geocode({ 'latLng': latlng }, (results, status) =>{
        if (status !== google.maps.GeocoderStatus.OK) {
            alert(status);
        }
        if (status == google.maps.GeocoderStatus.OK) {
            this.props.updateFromMap({
              address: results[0].formatted_address,
                lat: this.marker.position.lat(),
                lng: this.marker.position.lng()
              })
...closing brackets              
```

![tag screenshot](/docs/details/createvenue.png)

### Schedule
  A user can see the title of the charity they have sign up for as well as what times they sign up for. For more details on the Charity they can click on the more details button which will show the contact info and picture for the charity. A user can also cancel at this stage to.


![tag screenshot](/docs/Schedule.png)

## Future Directions for the Project
Aside from more css styling there is still much more that can be done from the standpoint of a user managing volunteer opportunities for their charity. Features such as seeing who has signed up for your charity as well as basic edit and delete features for a the Charity Venue and Volunteer timing it's offering.

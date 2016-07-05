"use-strict";

const React = require('react');
const SessionStore = require('../../stores/session_store.js');
const VenueStore = require('../../stores/venues_store.js');

const UserSchedule = React.createClass({
  getInitialState(){
    return {

      UserOccasions: SessionStore.currentUser().occasions,
      OccassionIds: SessionStore.collectOccassionIds(),

      UserVenues: SessionStore.SubcribedVenuesAsObj(),
      loggedInState: SessionStore.isUserLoggedIn(),
      VenueToDisplay: null
    }
  },

  componentDidMount(){
    this.SessionListener = SessionStore.addListener(this.handleChange);
  },


  componentWillUnmount(){
    this.SessionListener.remove();
  },

  handleChange(){
    this.setState({
      UserOccasions: SessionStore.currentUser().occasions,
      OccassionIds: SessionStore.collectOccassionIds(),
      UserVenues: SessionStore.SubcribedVenuesAsObj(),
      loggedInState: SessionStore.isUserLoggedIn()
    })
  },

  timeParser(integer){
    let string = integer.toString();
    let hours = string.slice(0,2);
    let minutes = string.slice(2,4);
    let ampm = "am";
    if(hours > 11){
      ampm = "pm";
    }
    if(hours > 12){
      hours = hours - 12
    }
    return hours + ":" + minutes + ampm
  },

  _handleSubscription(id){
    let error;
    if(this.state.loggedInState){
      SessionActions.createSubscription({volunteer_id: SessionStore.currentUser().id, occasion_id: id})
    }
  },

  _cancelSubscription(id){
    SessionActions.deleteSubscription(id);
  },

  _removeVenue(){
    event.preventDefault();
    this.setState({VenueToDisplay: null})
  },

  _DisplayVenue(venue_id){
    event.preventDefault();
    this.setState({VenueToDisplay: VenueStore.find(venue_id)})
  },



  render(){
    let occasions = this.state.UserOccasions
    let schedule = occasions.map(occasion => {
      let that = this
      let venueToggleButton = <button onClick={this._DisplayVenue.bind(null, occasion.venue_id)}>MoreDetails</button>;
      let button = <button onClick={this._handleSubscription.bind(null, occasion.id)}>Volunteer</button> ;
        if(that.state.OccassionIds.includes(occasion.id)){
          button = <button onClick={that._cancelSubscription.bind(null,
                    SessionStore.findSubscriptionId(occasion.id))}>Cancel</button>
        };
        if(this.state.VenueToDisplay !== null){
          venueToggleButton = <button onClick={this._removeVenue}>LessDetails</button>;
        }


        return(
          <div key={occasion.id}>
            <h1>{that.state.UserVenues[occasion.venue_id].title}</h1>
            <ul>date: {occasion.date}
              <li>Start Time: {that.timeParser(occasion.start_time)}</li>
              <li>End Time: {that.timeParser(occasion.end_time)}</li>
              {button}
              {venueToggleButton}
            </ul>
          </div>

        )
    })

    let DisplayVenue = "";
      if(this.state.VenueToDisplay){
        let venue = this.state.VenueToDisplay
        DisplayVenue= (
          <div className="VenueDisplay">
            <img src={venue.url} className="modal-thumbnail"/>
            <div className="small-details">
              <h1>title: {venue.title}</h1>
              <p>about: {venue.about}</p>
                <p>address: {venue.address}</p>
                <p>email: {venue.email}</p>
            </div>
          </div>
        )
    }

    return(
      <div>
        <h1>Your User </h1>
      {schedule}
      {DisplayVenue}
      </div>
    )
  }


})


module.exports = UserSchedule;

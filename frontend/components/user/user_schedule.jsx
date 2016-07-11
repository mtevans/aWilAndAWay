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
      let venueToggleButton = <button className="volunteer" onClick={this._DisplayVenue.bind(null, occasion.venue_id)}>More Details</button>;
      let button = <button onClick={this._handleSubscription.bind(null, occasion.id)}>Volunteer</button> ;

        if(that.state.OccassionIds.includes(occasion.id)){
          button = <button className="cancel" onClick={that._cancelSubscription.bind(null,
                    SessionStore.findSubscriptionId(occasion.id))}>Cancel</button>
        };
        if(this.state.VenueToDisplay !== null){
          venueToggleButton = <button className="volunteer" onClick={this._removeVenue}>More Details</button>;
        }


        return(
          <div className="schedule-item" key={occasion.id}>
            <h2>{that.state.UserVenues[occasion.venue_id].title}</h2>
            <h3>Volunteering on {occasion.date}</h3>
            <h3>From {VenueStore.timeParser(occasion.start_time)} to {VenueStore.timeParser(occasion.end_time)}</h3>
            <span>
              {button}
              {venueToggleButton}
            </span>
          </div>

        )
    })


    let DisplayVenue = <div className="venue-display"></div>;
      if(this.state.VenueToDisplay){
        let venue = this.state.VenueToDisplay
        DisplayVenue= (
          <div className="venue-display">
            <h1>{venue.title}</h1>
            <img src={venue.url} className="schedule-modal-thumbnail"/>
            <div className="smaller-details">
              <p>about: {venue.about}</p>
                <p>address: {venue.address}</p>
                <p>email: {venue.email}</p>
            </div>
            <button onClick={this._removeVenue}>Collapse&#8209;Details</button>
          </div>
        )
    }

    let themessage = "";
    if (this.state.UserOccasions.length === 0){
      themessage = (<h1 className="the-message">You Are Currently Not Signed Up to Volunteer Anywhere</h1>)
    }


    return(
      <div className="schedule-content">
        {themessage}
        <div className='schedule-items'>
          <h1>Schedule</h1>
          {schedule}
        </div>
        {DisplayVenue}
      </div>
    )
  }


})


module.exports = UserSchedule;

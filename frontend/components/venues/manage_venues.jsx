const React = require('react');
const SessionStore = require('../../stores/session_store.js');
const VenueActions = require('../../actions/venues_actions.js');
const OccasionsForm = require('./occasions_form.jsx');


const ManageVenues = React.createClass({
  getInitialState(){
    return {
      venues: SessionStore.currentUser().venues,
      venueOnDeck: null
    }
  },

  componentDidMount(){
    this.UserListener = SessionStore.addListener(this._handleChange)
  },

  _handleChange(){
    this.setState({venues: SessionStore.currentUser().venues})
  },

  componentWillUnmount(){
    this.UserListener.remove();
  },


  triggerForm(venue){
    this.setState({venueOnDeck: venue})
  },


  renderVenues(){
    let display = this.state.venues.map(venue => {
      return(
      <div  key={venue.id} className="VenueDisplay">
          <img src={venue.url} className="modal-thumbnail"/>
          <div className="">
            <h1>title: {venue.title}</h1>
            <p>about: {venue.about}</p>
            <p>address: {venue.address}</p>
          </div>
          <button onClick={this.triggerForm.bind(null, venue)}>Check/Add Volunteer Times</button>
      </div>)
    })
    return display
  },



  render(){
    let form = ""
    if (this.state.venueOnDeck !== null) {
      form = <OccasionsForm venue={this.state.venueOnDeck}/>
    }
    return(
      <div className="manage-venues-content">
        <div className="modal-venues">
          {this.renderVenues()}
          {form}
        </div>
      </div>
    )
  }
});

module.exports = ManageVenues

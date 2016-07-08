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
    this.setState({venueOnDeck: venue});
  },

  collapseDetails(){
    this.setState({venueOnDeck: null});
  },

  renderVenues(){


    let display = this.state.venues.map(venue => {
      let button = (<button onClick={this.triggerForm.bind(null, venue)}>Check/Add Volunteer Times</button>)
      if(this.state.venueOnDeck){
         button = (<button onClick={this.collapseDetails}>Collapse Times</button>)
      }
      return(
      <div  key={venue.id} className="VenueDisplay">
          <img src={venue.url} className="manage-modal-thumbnail"/>
          <div className="">
            <h1>Title: {venue.title}</h1>
            <p>Address: {venue.address}</p>
          </div>
          {button}
      </div>)
    })
    return display
  },



  render(){
    let form = ""
    if (this.state.venueOnDeck !== null) {
      form = <OccasionsForm venue={this.state.venueOnDeck} />
    }
    return(
      <div className="manage-venues-content">
        <div className="modal-venues">
          <h1 className="title">Below are the Events you've created</h1>
          <span>
            <p className='small-detail'>Remember, an Event without any Volunteer Times will not come up in searches</p>
        {this.renderVenues()}
        </span>
        </div>
        {form}
      </div>
    )
  }
});

module.exports = ManageVenues

const React = require('react');
const VenueStore = require('../../stores/venues_store.js');
const VenueActions = require('../../actions/venues_actions.js');



const VenueShowModal = React.createClass({
  getInitialState(){
    return {
      venue: VenueStore.find(this.props.venue.id)
    }
  },
  componentWillMount(){
    this.venueListener = VenueStore.addListener(this.venueUpdate)
    VenueActions.getVenue(this.props.venue.id);
  },

  venueUpdate(){
    this.setState({venue: VenueStore.find(this.props.venue.id)})
  },

  componentWillUnmount(){
    this.venueListener.remove();
  },

  openOccasions(){
    this.props.toggleOccasions();
  },


  render(){
    const venue = this.state.venue;
      return(
        <div>
          <img src={venue.url} className="modal-thumbnail"/>
          <div className="small-details">
            <h1>title: {venue.title}</h1>
            <p>about: {venue.about}</p>
              <p>address: {venue.address}</p>
              <p>zip_code: {venue.zip_code}</p>
              <p>email: {venue.email}</p>
          </div>
          <text>description: {venue.description}</text>
          <button onClick={this.openOccasions}>Look at some times</button>
        </div>
      )
  }
});


module.exports = VenueShowModal;

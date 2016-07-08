const React = require('react');
const VenueStore = require('../../stores/venues_store.js');
const VenueActions = require('../../actions/venues_actions.js');

const VenueMap = require('./venue_map.jsx');

const VenueShowModal = React.createClass({
  // getInitialState(){
  //   return {
  //     venue: VenueStore.find(this.props.venue.id)
  //   }
  // },
  componentWillMount(){
    this.venueListener = VenueStore.addListener(this.venueUpdate)
  },

  venueUpdate(){
    this.setState({venue: VenueStore.find(this.props.venue.id)})
  },

  componentWillUnmount(){
    this.venueListener.remove();
  },

  openOccasions(){
    this.props.toggleWhite();
  },


  render(){
    let gmap;
    if (this.props.modalOpen){
      gmap = <VenueMap venue={this.props.venue}/>
    }

    const venue = this.props.venue;
      return(
        <div className="the-modal">
          <div className="map-thumbnail-content">
            <img src={venue.url} className="modal-thumbnail"/>
            {gmap}
            <div className="top-content">
              <h5>Contact Info</h5>
              <span>
                <h5>Address</h5>
                <p>{venue.address} san franciso near the bart station</p>
              </span>
              <span>
                <h5>E-mail</h5>
                <p>{venue.email}</p>
              </span>
            </div>
          </div>
          <div className="small-details">
            <h1>{venue.title}</h1>

            <text>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{venue.description}</text>
          </div>
          <button onClick={this.openOccasions}>Look at Times</button>
        </div>
      )
  }
});


module.exports = VenueShowModal;

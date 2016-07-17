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
            {gmap}
            <div className="top-content">
              <span>
                <img src={venue.url} className="modal-thumbnail"/>
                <p className="email">{venue.email}</p>

                <p className="address">{venue.address}</p>
              </span>
              <div className="small-details">
                <text>{venue.description}</text>
                <button className="look-at-times" onClick={this.openOccasions}>Look at Times</button>
              </div>
            </div>
          </div>
        </div>
      )
  }
});


module.exports = VenueShowModal;

const React = require('react');
const ReactDOM = require('react-dom');

const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Header = require('../home/header.jsx');
const VenueStore = require('../../stores/venues_store.js');
const VenueActions = require('../../actions/venues_actions.js');
const VenueIndexItem = require('./venue_index_item.jsx');
const Footer = require('../home/footer.jsx');
const VenueIndex = require('./venue_index.jsx');


const _getCoordsObj = function(latLng) {
  return ({
    lat: latLng.lat(),
    lng: latLng.lng()
  });
}

const Map = React.createClass({

  getInitialState(){
    return {
      venues: []
    };
  },

  componentDidMount(){
    this.venueListener = VenueStore.addListener(this._getVenues);
    VenueActions.fetchVenues();

    const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
    const mapOptions = {
      center: {lat: 37.7758, lng: -122.435}, // this is SF
      zoom: 12
    };
    this.map = new google.maps.Map(mapDOMNode, mapOptions);
    this.registerListeners();
  },

  componentWillUnmount(){
    this.venueListener.remove();
  },


  _getVenues(){
    this.setState({venues: VenueStore.all()});
  },

  _changedModalStatus(targetVenue){
    let UpdatesVenues = this.state.venues.map(venue => {
      if(venue.id === targetVenue.id){
        targetVenue.modal_status = true;
        return targetVenue;
      } else {
        return venue
      }
    })

    this.setState({ venues: UpdatesVenues})
  },

  placeMarkers(){
    this.state.venues.map( venue => {

      let marker = new google.maps.Marker({
        position:{lat: venue.lat, lng: venue.lng},
        map: this.map,
        title: venue.title,
      })

      marker.addListener('click', () => {
        venue.modal_status = true
        this._changedModalStatus(venue)
      });
    })
  },

  registerListeners() {
    const that = this;
    google.maps.event.addListener(this.map, 'idle', () => {
      const mapBounds = that.map.getBounds();
      const northEast = _getCoordsObj(mapBounds.getNorthEast());
      const southWest = _getCoordsObj(mapBounds.getSouthWest());
      //actually issue the request
      const bounds = { northEast, southWest };
      VenueActions.fetchVenues(bounds);
    });
    // google.maps.event.addListener(this.map, 'click', event => {
    //   const coords = { lat: event.latLng.lat(), lng: event.latLng.lng() };
    //   VenueActions.fetchVenues(coords);
    //   // that._handleClick(coords);
    // });
  },


  render (){
    this.placeMarkers();

    return(
      <div className="index-page">
        <header className='header'><Header /></header>
        <div className="index-page-body">
          <div className='themap' ref='map'></div>
          <VenueIndex venues={this.state.venues}  />
        </div>
        <footer className="footer"><Footer/></footer>

      </div>
    )
  }
})


module.exports = Map;

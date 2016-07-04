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
      zoom: 13
    };
    this.map = new google.maps.Map(mapDOMNode, mapOptions);
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


  render (){
    this.placeMarkers();

    // let VenueItems = this.state.venues.map(venue => {
    //   return <VenueIndexItem className="venue-index-item" key={venue.id} venue={venue} /> ;
    // });
    // {VenueItems}

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

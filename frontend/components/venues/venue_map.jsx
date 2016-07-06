const ReactDOM = require('react-dom');
const React = require('react');

const VenueMap = React.createClass({

  componentDidMount(){
    const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
    const mapOptions = {
      center: {lat: this.props.venue.lat, lng: this.props.venue.lng}, // this is SF
      zoom: 14
    };
    this.map = new google.maps.Map(mapDOMNode, mapOptions);
    this.placeMarker();
  },

  placeMarker(){
    let venue = this.props.venue
    let pos = new google.maps.LatLng(venue.lat, venue.lng);
    new google.maps.Marker({
        position: pos,
        map: this.map,
        title: venue.title,
    })
  },

  render(){
    return(
      <div className="map" ref='map'></div>
    )
  }
})


module.exports = VenueMap;

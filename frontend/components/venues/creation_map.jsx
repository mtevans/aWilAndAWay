const React = require('react');
const ReactDOM = require('react-dom');

const CreationMap = React.createClass({

  componentDidMount(){
    const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
    const mapOptions = {
      center: {lat: 37.7758, lng: -122.435}, // this is SF
      zoom: 12
    };
    this.map = new google.maps.Map(mapDOMNode, mapOptions);
    let that = this

    google.maps.event.addListener(that.map, 'click', function(event) {
      that.placeMarker(event.latLng);
    });
  },

  placeMarker(location){
    if ( this.marker) {
      this.marker.setPosition(location);
    } else {
       this.marker = new google.maps.Marker({
        position: location,
        map: this.map
      });
    }
    this.getAddress();
  },

  getAddress(){
    let lat = this.marker.position.lat();
    let lng = this.marker.position.lng();

    var latlng = new google.maps.LatLng(lat, lng);
      // This is making the Geocode request
      var address;
      var geocoder = new google.maps.Geocoder();
      let that = this
      geocoder.geocode({ 'latLng': latlng }, (results, status) =>{
          if (status !== google.maps.GeocoderStatus.OK) {
              alert(status);
          }
          if (status == google.maps.GeocoderStatus.OK) {
              this.props.updateFromMap({
                address: results[0].formatted_address,
                  lat: this.marker.position.lat(),
                  lng: this.marker.position.lng()
                })
          }
      });
  },

  render(){
    return(
      <div className="creation-map" ref='map'></div>
    )
  }
})



module.exports = CreationMap;

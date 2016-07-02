"use strict";

const React = require('react');
const ReactDOM = require('react-dom');




const IndexMap =  React.createClass({

  componentDidMount(){
     const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
     const mapOptions = {
       center: {lat: 37.7758, lng: -122.435}, // this is SF
       zoom: 13
     };
     this.map = new google.maps.Map(mapDOMNode, mapOptions);
   },

  placeMarkers(){
    this.props.venues.forEach( venue => {

      let marker = new google.maps.Marker({
        position:{lat: venue.lat, lng: venue.lng},
        map: this.map,
        title: venue.title,
      })

      marker.addListener('click', () => {
        
      });
    })
  },

  render(){
    this.placeMarkers();
    return(
      <div className='map' ref='map'></div>
    )
  }
});



module.exports = IndexMap;

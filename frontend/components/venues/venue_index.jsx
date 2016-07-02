const React = require('react');
const VenueIndexItem = require('./venue_index_item.jsx');

const VenueIndex = React.createClass({
  render(){
    let VenueItems = this.props.venues.map(venue => {
      return <VenueIndexItem className="venue-index-item" key={venue.id} venue={venue} /> ;
    });
    return (
      <div>
        {VenueItems}
      </div>
    )
  },

})


module.exports = VenueIndex;

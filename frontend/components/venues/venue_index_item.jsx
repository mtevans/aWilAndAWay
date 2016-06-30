const React = require('react');

const VenueIndexItem = React.createClass({
  render(){
    const venue = this.props.venue
    return (
      <div className="venue-list-item">
        <h3>{venue.title}</h3>
        <p>{venue.about}</p>
      </div>
    )
  }
});


module.exports = VenueIndexItem;

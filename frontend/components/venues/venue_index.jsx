const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Header = require('../home/header.jsx');
const VenueStore = require('../../stores/venues_store.js');
const VenueActions = require('../../actions/venues_actions.js');
const VenueIndexItem = require('./venue_index_item.jsx');
const Footer = require('../home/footer.jsx');
const IndexMap = require('./index_map.jsx');


const VenueIndex = React.createClass({
  getInitialState(){
    return {
      venues: []
    };
  },

  componentDidMount(){
    this.venueListener = VenueStore.addListener(this._getVenues);
    VenueActions.fetchVenues();
  },

  componentWillUnmount(){
    this.venueListener.remove();
  },


  _getVenues(){
    this.setState({venues: VenueStore.all()});
  },

  render (){
    let VenueItems = this.state.venues.map(venue => {
      return <VenueIndexItem className="venue-index-item" key={venue.id} venue={venue} /> ;
    });

    return(
      <div className="index-page">
        <header className='header'><Header /></header>

          <div className="index-page-body">
            <IndexMap venues={this.state.venues}/>
            {VenueItems}
          </div>

        <footer className="footer"><Footer/></footer>

      </div>
    )
  }
})


module.exports = VenueIndex;

const React = require('react');
const Dispatcher = require('../dispatcher/dispatcher.js');
const VenueApiUtil = require('../util/venue_api_util.js');
const VenueConstants = require('../constants/venue_constants.js')

const VenueActions = {
  fetchVenues (bounds) {
    VenueApiUtil.fetchVenues(bounds, this.receiveAll);
  },

  getVenue (id) {
    VenueApiUtil.getVenue(id, this.receiveVenue);
  },

  createVenue(data){
    VenueApiUtil.createVenue(data, this.receiveVenue)
  },

  createOccasion(data){
    VenueApiUtil.createOccasion(data, this.receiveVenue)
  },

  receiveAll (venues) {
    Dispatcher.dispatch({
      actionType: VenueConstants.VENUES_RECEIVED,
      venues: venues
    });
  },

  receiveVenue (venue) {
    debugger
    Dispatcher.dispatch({
      actionType: VenueConstants.VENUE_RECEIVED,
      venue: venue
    });
  },
}


module.exports = VenueActions;

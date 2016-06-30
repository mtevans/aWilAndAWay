"use-strict";
const React = require('react');
const Store = require('flux/utils').Store;
const Dispatcher = require('../dispatcher/dispatcher.js');
const VenueConstants = require('../constants/venue_constants.js')


let _venues = {}

const VenueStore = new Store(Dispatcher);

VenueStore.find = function(id){
  return _venues[id];
}

VenueStore.all = function(){
  let venues = [];
  for (var i in _venues) {
    if (_venues.hasOwnProperty(i)) {
      venues.push(_venues[i]);
    }
  }
  return venues;
}

VenueStore.__onDispatch = function(payload){
  switch (payload.actionType) {
    case VenueConstants.VENUES_RECEIVED:
      resetVenues(payload.venues)
      break;
    case VenueConstants.VENUE_RECEIVED:
      setVenue(payload.venue)
      break;
  }
}

const resetVenues = function (venues) {
  _venues = {};

  venues.forEach(function (venue) {
    _venues[venue.id] = venue;
  });
  VenueStore.__emitChange();
};

const setVenue = function(venue){
  _venues[venue.id] = venue;
  VenueStore.__emitChange();
}





module.exports = VenueStore;

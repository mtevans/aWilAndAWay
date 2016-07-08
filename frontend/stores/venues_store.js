"use-strict";
const React = require('react');
const Store = require('flux/utils').Store;
const Dispatcher = require('../dispatcher/dispatcher.js');
const VenueConstants = require('../constants/venue_constants.js')


let _venues = {}

let EventJustCreated = false

const VenueStore = new Store(Dispatcher);

VenueStore.find = function(id){
  return _venues[id];
}

VenueStore.WasEventCreated = function(){
    return EventJustCreated;
}

VenueStore.copyOfVenuesObject = function(){
  return Object.assign({}, _venues);
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

VenueStore.timeParser = function(integer){
  let string = integer.toString();
  let hours = string.slice(0,2);
  let minutes = string.slice(2,4);
  let ampm = "am";
  if(hours > 11){
    ampm = "pm";
  }
  if(hours > 12){
    hours = hours - 12
  }
  return hours + ":" + minutes + ampm
}

const resetVenues = function (venues) {
  _venues = {};
  EventJustCreated = false
  venues.forEach(function (venue) {
    _venues[venue.id] = venue;
  });

  VenueStore.__emitChange();
};

const setVenue = function(venue){
  _venues[venue.id] = venue;
  EventJustCreated = true
  VenueStore.__emitChange();
}





module.exports = VenueStore;

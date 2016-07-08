"use-strict";
const React = require('react');
const Store = require('flux/utils').Store;
const Dispatcher = require('../dispatcher/dispatcher.js');
const VenueConstants = require('../constants/venue_constants.js')

let _creationErrors = [];

const ErrorStore = new Store(Dispatcher);

ErrorStore.__onDispatch = function(payload){
  switch (payload.actionType) {
    case VenueConstants.RECEIVE_CREATION_ERRORS:
        _creationErrors = payload.creationErrors;
        this.__emitChange();
      break;
  }
}


ErrorStore.creationErrors = function(){
  return _creationErrors;
}

ErrorStore.clearErrors = function(){
   _creationErrors = []
}




module.exports = ErrorStore;

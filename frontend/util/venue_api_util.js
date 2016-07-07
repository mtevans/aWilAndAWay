"use strict";




const VenueApiUtil = {
  fetchVenues(bounds ,successCallback){

    $.ajax({
			url: '/api/venues',
			type: 'GET',
      data: {bounds: bounds},
      success: function(response){
        successCallback(response);
      }
    });
  },

  getVenue(id, successCallback){
    $.ajax({
			url: `/api/venues/${id}`,
			type: 'GET',
      success: function(response){
        successCallback(response);
      }
    });
  },

  createVenue(data, successCallback){
    $.ajax({
      url: `/api/venues`,
      type: 'post',
      data: {venue: data},
      success: function(response){
        successCallback(response);
      }
    });
  },

  createOccasion(data, successCallback){
    $.ajax({
      url: `/api/occasions`,
      type: 'post',
      data: {occasion: data},
      success: function(response){
        successCallback(response);
      }
    });
  }


};



module.exports = VenueApiUtil;

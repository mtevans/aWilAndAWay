"use strict";




const VenueApiUtil = {
  fetchVenues(successCallback){
    $.ajax({
			url: '/api/venues',
			type: 'GET',
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


};



module.exports = VenueApiUtil;

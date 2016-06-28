"use strict";

const SessionApiUtil = {
  logIn(user, success, error){
    $.ajax({
			url: '/api/session',
			type: 'POST',
			data: { user },
      success: function(response){
        success(response);
      },
      error: function(xhr) {
        const errors = xhr.responseJSON;
        error("login", errors);
      }
    });
  },

  logOut(success){
    $.ajax({
			url: '/api/session',
			type: 'DELETE',
      success: function(response){
        success(response);
      },
      error: function(){
        console.log("Logout error")
      },
    });
  },

  signUp(user, success, error){
    $.ajax({
      url: '/api/users',
      type: 'POST',
      dataType: 'json',
      data: {user},
      success: function (response){
        success(response)
      },
      error: function (response){
        success(response)
      }
    });

    },
  }

module.exports = SessionApiUtil;

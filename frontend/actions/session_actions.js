const React = require('react');
const SessionConstants = require('../constants/session_constants.js');
const Dispatcher = require('../dispatcher/dispatcher.js');
const SessionApiUtil = require('../util/session_api_util.js');


const SessionActions = {
  signUp(formData){
    SessionApiUtil.signUp(formData,
      this.receiveCurrentUser
      );
  },

  logIn(formData){
    SessionApiUtil.logIn(formData,
      this.receiveCurrentUser);
  },

  logOut() {
    SessionApiUtil.logOut(this.removeCurrentUser);
  },

  receiveCurrentUser(currentUser) {
    Dispatcher.dispatch({
      actionType: SessionConstants.LOGIN,
      user: currentUser
    });
  },

  removeCurrentUser(){
    Dispatcher.dispatch({
      actionType: SessionConstants.LOGOUT
    });
  }
}


module.exports = SessionActions;

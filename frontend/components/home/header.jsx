const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const LoginForm = require('../user/login_form.jsx');
const SessionStore = require('../../stores/session_store.js');
const SessionActions = require('../../actions/session_actions.js');

const Header = React.createClass ({
  getInitialState(){
    return {
      loggedIn: SessionStore.isUserLoggedIn(),
    }
  },

  componentDidMount(){
    SessionStore.addListener(this._onChange);
  },

  _onChange(){
    this.setState({loggedIn: SessionStore.isUserLoggedIn() } )
  },

  logout(){
    SessionActions.logOut();
  },

  render(){
      let logger = <Link to={`/login`}>Log In</Link> ;
      let sign =  <Link to={`/signup`}>Sign Up</Link> ;
      if (this.state.loggedIn) {
        logger = <Link to={`/`} onClick={this.logout}>Log Out</Link> ;
          sign = <p>{SessionStore.currentUser().name}</p>;
      };

    return (
      <div>
        {logger}
        {sign}
      </div>
    )
  }

});


module.exports = Header


// let logger = function(){
//   if (SessionStore.currentUser().keys === undefined){
//     return <Link to={`/login`}>Log In</Link>
//   } else {
//   return <Link to={`/`} onClick={this.logout}>Log Out</Link>
//   }
// };

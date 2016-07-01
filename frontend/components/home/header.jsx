const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Modal = require("react-modal");


const LoginForm = require('../user/login_form.jsx');
const SignUpForm = require('../user/sign_up_form.jsx');
const SessionStore = require('../../stores/session_store.js');
const SessionActions = require('../../actions/session_actions.js');


const Header = React.createClass ({
  getInitialState(){
    return {
      loggedIn: SessionStore.isUserLoggedIn(),
      modalOpen: false,
      signIn: false
    }
  },

  componentDidMount(){
    this.listener = SessionStore.addListener(this._onChange);
  },

  _onChange(){
    this.setState({loggedIn: SessionStore.isUserLoggedIn() } )
  },

  componentWillUnmount(){
    this.listener.remove();
  },

  logout(){
    SessionActions.logOut();
  },

  _handleClick (bool){

    this.setState({modalOpen: true, signIn: bool})
  },

  onModalClose (){
    this.setState({modalOpen: false})
  },

  render(){

    let component = (this.state.signIn) ? <LoginForm callback={this.onModalClose}/>:
    <SignUpForm callback={this.onModalClose}/>;

  let logger = <a className="logger"  onClick={this._handleClick.bind(this, true)}>Log In</a> ;
    let sign =  <a onClick={this._handleClick.bind(this, false)}>Sign Up</a> ;

      if (this.state.loggedIn) {
        logger = <Link className="logger"  to={`/`} onClick={this.logout}>Log Out</Link> ;
          sign = <a >{SessionStore.currentUser().name}</a>;
      };

    return (
      <div>
        <div className="header-right">
          {sign}
          {logger}
        </div>
        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this.onModalClose}>
          {component}
          <button onClick={this.onModalClose}>Close</button>
        </Modal>
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

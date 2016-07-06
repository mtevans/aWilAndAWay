const React = require('react');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Modal = require("react-modal");

const Link = require('react-router').Link;
const LoginForm = require('../user/login_form.jsx');
const SignUpForm = require('../user/sign_up_form.jsx');
const SessionStore = require('../../stores/session_store.js');
const SessionActions = require('../../actions/session_actions.js');
const UserSchedule = require('../user/user_schedule.jsx');

const Header = React.createClass ({
  getInitialState(){
    return {
      loggedIn: SessionStore.isUserLoggedIn(),
      loggerModalOpen: false,
      signIn: false,
      userShowModal: false
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
    this.setState({loggerModalOpen: true, signIn: bool})
  },

  onModalClose (){
    this.setState({loggerModalOpen: false})
  },

  userModalClose(){
    this.setState({ userShowModal: false})
  },

  openUserModal(){
    this.setState({ userShowModal: true})
  },

  redirectHome(){
    hashHistory.push("/");
  },

  render(){

    let component = (this.state.signIn) ? <LoginForm callback={this.onModalClose}/>:
    <SignUpForm callback={this.onModalClose}/>;

  let logger = <a className="logger" id="a"  onClick={this._handleClick.bind(this, true)}>Log In</a> ;
    let sign =  <a id="b" onClick={this._handleClick.bind(this, false)}>Sign Up</a> ;

      if (this.state.loggedIn) {
        logger = <a className="logger" id="a" onClick={this.logout}>Log Out</a> ;
          sign = <a id="b" onClick={this.openUserModal}>{SessionStore.currentUser().name}</a>;
      };

    return (
      <div>
        <content className="header-content">
          <img onClick={this.redirectHome} className="header-logo"  src="http://res.cloudinary.com/dfld7chk4/image/upload/v1467517608/featheredhands-transparent-final_tns0sn.png"/>
          <div className="siteName"> aWillAndAWay</div>
          <div className="header-right">
            {sign}
            {logger}
          </div>
        </content>
        <Modal
          isOpen={this.state.loggerModalOpen}
          onRequestClose={this.onModalClose}
          className='headerloggermodal'>

          {component}

          <button className="button-x" onClick={this.onModalClose}>X</button>
        </Modal>
      <Modal isOpen={this.state.userShowModal}
            onRequestClose={this.userModalClose}>

        <UserSchedule/>

      <button onClick={this.userModalClose}>Close</button>
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

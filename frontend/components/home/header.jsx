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
const CreateVenueForm = require('../venues/create_venue_form.jsx');
const ManageVenues = require('../venues/manage_venues.jsx');

const Header = React.createClass ({
  getInitialState(){
    return {
      loggedIn: SessionStore.isUserLoggedIn(),
      loggerModalOpen: false,
      signIn: false,
      userShowModal: false,
      manageVenuesModal: false
    }
  },

  componentDidMount(){
    this.listener = SessionStore.addListener(this._onChange);
  },

  closeManageVenuesModal(){
    this.setState({manageVenuesModal: false})
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
    SessionStore.clearAuthErrors();
  },

  userModalClose(){
    this.setState({ userShowModal: false})
    SessionStore.clearAuthErrors();
  },

  openUserModal(){
    this.setState({ userShowModal: true})
  },

  redirectHome(){
    hashHistory.push("/");
  },

  openManageEventsModal(){
    this.setState({manageVenuesModal: true})
  },

  render(){

    let component = (this.state.signIn) ? <LoginForm callback={this.onModalClose}/>:
    <SignUpForm callback={this.onModalClose}/>;

  let logger = <a className="logger" id="a"  onClick={this._handleClick.bind(this, true)}>Demo&nbsp;User</a> ;
    let sign =  <a id="b" onClick={this._handleClick.bind(this, false)}>Sign&nbsp;Up</a> ;
      let create= "";
      let manageVenues = "";

      if (this.state.loggedIn) {
        logger = <a className="logger" id="a" onClick={this.logout}>Log&nbsp;Out</a> ;
          sign = <a id="b" onClick={this.openUserModal}>My&nbsp;Schedule</a>;
          create = <CreateVenueForm openManageEventsModal={this.openManageEventsModal}/>
          manageVenues = <a onClick={this.openManageEventsModal}>My&nbsp;Charities</a>
      };

    return (
      <div>
        <content className="header-content">
          <div className="siteName">
            <img onClick={this.redirectHome} className="header-logo"  src="http://res.cloudinary.com/dfld7chk4/image/upload/v1467517608/featheredhands-transparent-final_tns0sn.png"/>
            <img onClick={this.redirectHome} className='site-title' src="http://res.cloudinary.com/dfld7chk4/image/upload/v1467917702/A_Will_A_Way-logo_k9ouoe.png">
            </img>
          </div>



          <div className="header-right">
            <div className="manager">
              {manageVenues}
              {create}
            </div>
            <div classname="manager">
              {sign}
              {logger}
            </div>
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
          onRequestClose={this.userModalClose}
          className='schedule-modal'>
          <button className='schedule-close' onClick={this.userModalClose}>X</button>
          <UserSchedule/>
      </Modal>

      <Modal isOpen={this.state.manageVenuesModal}
            onRequestClose={this.closeManageVenuesModal}
            className='manager-modal'>
          <button className="another-close-button" onClick={this.closeManageVenuesModal}>X</button>
      <ManageVenues toggleManageVenuesModal={this.closeManageVenuesModal}/>
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

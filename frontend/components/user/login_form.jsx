"use-strict";

const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const SessionActions = require('../../actions/session_actions.js');
const SessionStore = require('../../stores/session_store.js');


const LoginForm = React.createClass({

  DEMO_EMAIL: ["S", "t", "e", "v", "e", "@","e","x","a","m","p","l","e",".","c","o","m"],

  DEMO_PASSWORD: ["p", "a", "s", "s", "w", "o", "r", "d"],

  getInitialState() {
    return {
      email: "",
      password: "",
      authErrors: SessionStore.authErrors(),
      currentUser: SessionStore.isUserLoggedIn()
    };
  },

  componentDidMount(){
    this.errorListener = SessionStore.addListener(this._onErrorsChange);
    this.sessionListener = SessionStore.addListener(this._onLoggingIn)
  },

  componentWillUnmount(){
    this.errorListener.remove();
    this.sessionListener.remove();
  },

  _onErrorsChange(){
    this.setState({authErrors: SessionStore.authErrors() });
    this.setState({currentUser: SessionStore.isUserLoggedIn() })
  },

  _onChange(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

  _onLoggingIn(){
    if (SessionStore.isUserLoggedIn() ){
      this.props.callback();
    };
    hashHistory.push('/index');
  },

  handleSubmit(e){
    e.preventDefault();
    let data = {
      email: this.state.email,
      password: this.state.password,
    };
    SessionActions.logIn(data);
  },

  demoLogIn(e) {
     e.preventDefault();

     this.setState({
       email: "",
       password: ""
     });

     var _email = this.DEMO_EMAIL.slice();
     this.autoFillEmail(_email);
   },

   autoFillEmail(_email) {
     if (_email.length > 0) {
       setTimeout(function() {
         this.setState({
           email: this.state.email + _email.shift()
         });

         this.autoFillEmail(_email);
       }.bind(this), 50);
     } else {
       var _password = this.DEMO_PASSWORD.slice();
       this.authoFillPassword(_password);
     }
   },

   authoFillPassword(_password) {
     if (_password.length > 0) {
       setTimeout(function() {
         this.setState({
           password: this.state.password + _password.shift()
         });

         this.authoFillPassword(_password);
       }.bind(this), 50);
     } else {
       var dummyEvent = { preventDefault: function(){} };
       setTimeout(this.handleSubmit.bind(this, dummyEvent), 200);
     }
   },



  render(){
    let authErrors = this.state.authErrors;
    if(authErrors.length !== 0){
      authErrors.map( error => {

        return( <h3 className='sign-in-errors'>{error}</h3>) ;
      })
    };


    return (
      <div className="form">
      <form className="log-in-form" onSubmit={this.handleSubmit}>
          <h2>LOG IN</h2>
          <input type="text" placeholder="Email" value={this.state.email} onChange={this._onChange("email")}
            className="login-input" />


          <input type="password" placeholder="Password" value={this.state.password} onChange={this._onChange("password")}
            className="login-input" />

        {authErrors}
        <div onClick={this.handleSubmit} id='sign-in' className="demo-submit">
          <span className="label">Log&nbsp;In</span>
          <span className="icon">
            <img src="http://res.cloudinary.com/dfld7chk4/image/upload/v1469555334/Log_In-512_i3cmx6.png" className="icon"></img>
          </span>
        </div>
      </form>
      <div className="divider">
      <h2>OR</h2>
      </div>
      <div className="demo-form" onSubmit={this.demoLogIn}>

          <div onClick={this.demoLogIn} className="demo-submit">
            <span className="label">Demo&nbsp;Account</span>
            <span className="icon">
              <img src="http://res.cloudinary.com/dfld7chk4/image/upload/v1469555334/Log_In-512_i3cmx6.png" className="icon"></img>
            </span>
          </div>


    </div>
    </div>
    )
  }
});


module.exports = LoginForm;

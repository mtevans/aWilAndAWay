"use-strict";

const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const SessionActions = require('../../actions/session_actions.js');
const SessionStore = require('../../stores/session_store.js');


const SignUpForm = React.createClass({
  getInitialState() {
    return {
      email: "",
      password: "",
      name: "",
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

  _onLoggingIn(){
    if (SessionStore.isUserLoggedIn() ){
      this.props.callback();
    };
  },



  _onChange(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

  handleSubmit(e){
    e.preventDefault();
    const data = {
      email: this.state.email,
      password: this.state.password,
      name: this.state.name
    };
    SessionActions.signUp(data);
  },
  render(){
    debugger;
    let authErrors = this.state.authErrors;
    if(authErrors.length !== 0){
      authErrors = authErrors.map( error => {
        if(error[0] === "has already been taken"){
        return <h3 className="email error">A user with the email {this.state.email} already exist with us</h3> ;
        }
        return <h3 className="passord error">Your password {error}</h3>
      })
    };

    return (

      <form className="log-in-form" onSubmit={this.handleSubmit}>
        <label> Name:
          <input type="text" value={this.state.name} onChange={this._onChange("name")}
            className="signup-input" />
				</label>
        <label> Email:
          <input type="text" value={this.state.email} onChange={this._onChange("email")}
            className="signup-input" />
				</label>
        <label> Password:
          <input type="password" value={this.state.pasword} onChange={this._onChange("password")}
            className="signup-input" />
        </label>
        <input type="submit" value="Submit" />
        {authErrors}
      </form>
    )
  }
});


module.exports = SignUpForm;

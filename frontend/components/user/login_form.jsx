"use-strict";

const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const SessionActions = require('../../actions/session_actions.js');
const SessionStore = require('../../stores/session_store.js');


const LoginForm = React.createClass({

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
  },

  handleSubmit(e){
    e.preventDefault();
    const data = {
      email: this.state.email,
      password: this.state.password,
    };
    SessionActions.logIn(data);
  },

  render(){



    let authErrors = this.state.authErrors;
    if(authErrors.length !== 0){
      authErrors.map( error => {

        return( <h3>{error} </h3>) ;
      })
    };


    return (
      <form className="log-in-form" onSubmit={this.handleSubmit}>
        {authErrors}
        <label> Email:
          <input type="text" value={this.state.email} onChange={this._onChange("email")}
            className="login-input" />
				</label>
        <label> Password:
          <input type="password" value={this.state.password} onChange={this._onChange("password")}
            className="login-input" />
        </label>
        <input type="submit" value="Sign In"/>
      </form>
    )
  }
});


module.exports = LoginForm;

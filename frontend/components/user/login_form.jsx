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
      password: ""
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
    };
    SessionActions.logIn(data);
    hashHistory.push("/");
  },

  render(){
    return (
      <form className="log-in-form" onSubmit={this.handleSubmit}>

        <label> Email:
          <input type="text" value={this.state.email} onChange={this._onChange("email")}
            className="login-input" />
				</label>
        <label> Password:
          <input type="password" value={this.state.pasword} onChange={this._onChange("password")}
            className="login-input" />
        </label>
        <input type="submit" value="Sign In" />
      </form>
    )
  }
});


module.exports = LoginForm;

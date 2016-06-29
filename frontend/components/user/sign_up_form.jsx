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
      name: ""
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
    this.props.callback();
  },

  render(){
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
      </form>
    )
  }
});


module.exports = SignUpForm;

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

  demoLogIn(e){
    e.preventDefault();
    SessionActions.logIn({email: "Steve@example.com", password: "password"})
    hashHistory.push('/index')
  },


  handleSubmit(e){
    e.preventDefault();
    const data = {
      email: this.state.email,
      password: this.state.password,
      name: this.state.name
    };
    SessionActions.signUp(data);
    hashHistory.push('/index')
  },

  render(){
    let authErrors = this.state.authErrors;
    if(authErrors.length !== 0){
      authErrors = authErrors.map( error => {
        if(error[0] === "has already been taken"){
        return <h3 className="email error">A user with the email {this.state.email} already exists with us</h3> ;
        }
        return <h3 className="passord error">Your password {error}</h3>
      })
    };

    return (
      <div className="form">
      <form className="log-in-form" onSubmit={this.handleSubmit}>
        <h2>SIGN UP</h2>
          <input type="text" placeholder="Name" value={this.state.name} onChange={this._onChange("name")}
            className="login-input" />

          <input type="text" placeholder="Email"value={this.state.email} onChange={this._onChange("email")}
            className="login-input" />


          <input  type="password" placeholder="Password" value={this.state.password} onChange={this._onChange("password")}
            className="login-input" />

        {authErrors}
        <div onClick={this.handleSubmit} id='sign-up' className="demo-submit">
          <span className="label">Create&nbsp;Account</span>
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


module.exports = SignUpForm;

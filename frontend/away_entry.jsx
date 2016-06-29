const React = require('react');
const ReactDOM = require('react-dom');
const ReactRouter = require('react-router');
const Modal = require("react-modal");

const hashHistory = ReactRouter.hashHistory;
const Router = ReactRouter.Router;
const Route = ReactRouter.Route;
const IndexRoute = ReactRouter.IndexRoute;


const LoginForm = require('./components/user/login_form.jsx');
const SignUpForm = require('./components/user/sign_up_form.jsx');
const Homepage = require('./components/home/homepage.jsx');

const SessionApiUtil = require('./util/session_api_util.js');
const SessionActions = require('./actions/session_actions.js');
const SessionStore = require('./stores/session_store.js');


window.SessionActions = SessionActions;
window.SessionStore = SessionStore


const appRouter = (
  <Router history={hashHistory}>
    <Route path="/" component={Homepage}>
      <Route path="/login" component={ LoginForm } />
      <Route path="/signup" component={ SignUpForm } />
    </Route>
  </Router>
);




document.addEventListener("DOMContentLoaded", function(){
  Modal.setAppElement(document.body);
  ReactDOM.render( appRouter ,
    document.getElementById('content')
  );
});

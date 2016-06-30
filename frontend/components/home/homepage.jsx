"use-strict";

const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Header = require('./header.jsx')
const Jumbotron = require('./jumbotron.jsx');
const Footer = require('./footer.jsx');

const Homepage = React.createClass({
  render () {
    return (
      <div className='homepage'>
        <header className='header'><Header /></header>
        <div className="content">

          <div className="splash">
            <Jumbotron/>
          </div>

        </div>
        <p>Homepage</p>
        { this.props.children}
        <footer><Footer/></footer>
      </div>

    )
  }


})



module.exports = Homepage;

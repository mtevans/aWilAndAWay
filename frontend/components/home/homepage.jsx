"use-strict";

const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Header = require('./header.jsx')
const Jumbotron = require('./jumbotron.jsx');
const Footer = require('./footer.jsx');
const Description = require('./description.jsx')

const Homepage = React.createClass({
  render () {
    return (
      <div className='homepage'>
        <div className="the-content">
          <header className='header'><Header /></header>

          <div className="splash">
            <Jumbotron/>
          </div>

          <footer><Footer/></footer>
        </div>



      </div>

    )
  }


})



module.exports = Homepage;

"use-strict";

const React = require('react');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Header = require('./header.jsx')



const Homepage = React.createClass({
  render () {
    return (
      <div className='homepage'>
        <header className='header'><Header /></header>
        <p>Homepage</p>

      </div>

    )
  }


})



module.exports = Homepage;

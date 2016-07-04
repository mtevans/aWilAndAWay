const React = require('react');
const Link = require('react-router').Link;

var Jumbotron = React.createClass({

  render: function() {
    return (
      <div className="jumbotron">
        <div className="jumbotron-tag">

          <Link to="/index">Explore</Link>
          <h2>Bringing Good People And Better Causes Together</h2>
        </div>
      </div>
    );
  }

});

module.exports = Jumbotron;

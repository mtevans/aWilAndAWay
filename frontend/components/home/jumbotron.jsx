const React = require('react');
const Link = require('react-router').Link;

var Jumbotron = React.createClass({

  render: function() {
    return (
      <div className="jumbotron">
        <div className="jumbotron-tag">
          <img className="jumbotron-logo" src="http://res.cloudinary.com/dfld7chk4/image/upload/v1467517608/featheredhands-transparent-final_tns0sn.png"/>
          <h2>Bringing Good People And Better Causes Together</h2>
          <Link to="/index">Explore</Link>
        </div>
      </div>
    );
  }

});

module.exports = Jumbotron;

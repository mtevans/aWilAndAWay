const React = require('react');
const SessionStore = require('../../stores/session_store.js');
const SessionActions = require('../../actions/session_actions.js');

let error;

const VenueOccasionShow = React.createClass({
  getInitialState(){
      return {loggedInState: SessionStore.isUserLoggedIn(),
              OccassionIds: SessionStore.collectOccassionIds()
            }
  },

  componentDidMount(){
    this.subscriptionListener = SessionStore.addListener(this.handleSubscriptionChange);
  },

  componentWillUnmount(){
    this.subscriptionListener.remove();
  },

  handleSubscriptionChange(){
    this.setState({OccassionIds: SessionStore.collectOccassionIds()})
  },



  timeParser(integer){
    let string = integer.toString();
    let hours = string.slice(0,2);
    let minutes = string.slice(2,4);
    let ampm = "am";
    if(hours > 11){
      ampm = "pm";
    }
    if(hours > 12){
      hours = hours - 12
    }
    return hours + ":" + minutes + ampm
  },

  _handleSubscription(id){
    let error;
    if(this.state.loggedInState){
      SessionActions.createSubscription({volunteer_id: SessionStore.currentUser().id, occasion_id: id})
    }
  },

  _cancelSubscription(id){
    SessionActions.deleteSubscription(id);
  },

  render(){
    const venue = this.props.venue;
    const occasions = venue.occasions;


    let OccasionDisplay = occasions.map(occasion => {
      let that = this
      let button = <button onClick={this._handleSubscription.bind(null, occasion.id)}>Volunteer</button> ;

        if(that.state.OccassionIds.includes(occasion.id)){
          // session store fucntion to find subscription id based off of occasion id.

          button = <button onClick={that._cancelSubscription.bind(null, SessionStore.findSubscriptionId(occasion.id))}>Cancel</button>
        };
      return( <div key={occasion.id}>
              <ul>date: {occasion.date}
                <li>Start Time: {this.timeParser(occasion.start_time)}</li>
                <li>End Time: {this.timeParser(occasion.end_time)}</li>
                {button}
              </ul>
            </div>
          )
    })

    return (
      <div>
        <h2>Volunteer Dates and Times</h2>
        {OccasionDisplay}
        <p>welcome to the occasion page</p>
      </div>
    )
  }
})


module.exports = VenueOccasionShow;

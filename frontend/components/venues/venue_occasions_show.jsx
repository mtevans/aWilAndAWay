const React = require('react');
const SessionStore = require('../../stores/session_store.js');
const SessionActions = require('../../actions/session_actions.js');
const ReactTooltip = require("react-tooltip");

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
    if(this.state.loggedInState){
      SessionActions.createSubscription({volunteer_id: SessionStore.currentUser().id, occasion_id: id})
    }
  },

  filteredOccasions(){
    let occasions = this.props.venue.occasions
    let filter = this.props.filters
    let filtered = {matches: [], nonMatches: [] };
    let startTime = filter.startTime
    let endTime = filter.endTime
    let date = filter.date

    occasions.forEach(occasion => {
      if ((occasion.start_time >= startTime) && (occasion.end_time <= endTime)
      && (occasion.date === date || date === "")){
        return filtered.matches.push(occasion)
      } else { return filtered.nonMatches.push(occasion)}

    })

    return filtered
  },

  _cancelSubscription(id){
    SessionActions.deleteSubscription(id);
  },

  generateOccassions(occasions){
    return occasions.map(occasion => {
      let that = this
      let button;
      if(this.state.loggedInState){
          button = <button onClick={this._handleSubscription.bind(null, occasion.id)}>Volunteer</button> ;
        if(that.state.OccassionIds.includes(occasion.id)){
          button = <button onClick={that._cancelSubscription.bind(null, SessionStore.findSubscriptionId(occasion.id))}>Cancel</button>
        };
      } else {
        button = ( <div>
                    <button data-tip data-for="error">Volunteer</button>
                    <ReactTooltip id="error"><span>Log In To <br/>Volunteer</span></ReactTooltip>
                  </div>
                )
      }


      return( <div key={occasion.id}>
              <ul>date: {occasion.date}
                <li>Start Time: {this.timeParser(occasion.start_time)}</li>
                <li>End Time: {this.timeParser(occasion.end_time)}</li>
                {button}
              </ul>
            </div>
          )
    })
  },


  render(){
    const venue = this.props.venue;
    let postFilterOccasions = this.filteredOccasions();
    let MatchedOccasions = postFilterOccasions.matches;
    let nonMatchOccasions = postFilterOccasions.nonMatches;


    let noFilterApplied = <div className="Occasion Results">{this.generateOccassions(venue.occasions)}</div>
    let filterApplied = (<div className="Occasion Results">
      <div><h3>Times that match your Criteria</h3>
      {this.generateOccassions(MatchedOccasions)}</div>
      <div><h3>Other Times</h3>
      {this.generateOccassions(nonMatchOccasions)}
      </div>
    </div>
  )

  let occasionsToShow;
    if (this.props.filters.filterStatus){
      occasionsToShow = filterApplied;
    } else {
      occasionsToShow = noFilterApplied;
    }


    return (
      <div>
        <h2>Volunteer Dates and Times</h2>
        {occasionsToShow}
        <p>welcome to the occasion page</p>
      </div>
    )
  }
})


module.exports = VenueOccasionShow;

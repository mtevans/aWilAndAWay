const React = require('react');
const SessionStore = require('../../stores/session_store.js');
const VenueActions = require('../../actions/venues_actions.js');
const VenueStore = require('../../stores/venues_store.js');

const OccasionsForm = React.createClass({
  getInitialState(){
    return {
      date: "",
      start_time: "",
      end_time: "",
      venue_id: this.props.venue.id,
      organizer_id: SessionStore.currentUser().id
    }
  },


  displayOccasions(){

    let venue = VenueStore.find(this.props.venue.id)
    if (venue.occasions !== undefined && venue.occasions.length > 0){
      let occ;
      occ = venue.occasions.map(occasion => {
       return ( <ul>date: {occasion.date}
         <li>Start Time: {VenueStore.timeParser(occasion.start_time)}</li>
         <li>End Time: {VenueStore.timeParser(occasion.end_time)}</li>
       </ul> )
     });
     return occ
    }
   },

  _handleDateChange(e){
     e.preventDefault();
     this.setState({date: e.target.value})
  },

  _startTimeSetter(e){
     e.preventDefault()
    let time = e.target.value
    let startTime = parseInt(time.slice(0,2) + time.slice(3,5))
    this.setState({start_time: startTime})
  },

  _endTimeSetter(e){
    e.preventDefault()
   let time = e.target.value
   let endTime = parseInt(time.slice(0,2) + time.slice(3,5))
   this.setState({end_time: endTime})
 },

  createOccasion(){
    
    VenueActions.createOccasion(this.state)
  },

   displayForm(){
     let form = <form onSubmit={this.createOccasion} className="occasion-form">
                 <input type="date" onChange={this._handleDateChange}/>
                 <input type="time" className="start-time" onChange={this._startTimeSetter}/>
                 <input type="time" className="end-time" onChange={this._endTimeSetter}/>
                 <input type="submit" value="Post" />
               </form>
      return form
   },

  render(){
    return(
      <div>
        <h1>Create a new Volunteer Time for {this.props.venue.title}</h1>
        {this.displayForm()}
        {this.displayOccasions()}
      </div>
    )
  }
})


module.exports = OccasionsForm;

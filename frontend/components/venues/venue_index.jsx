const React = require('react');
const VenueIndexItem = require('./venue_index_item.jsx');
const Masonry = require('react-masonry-component');



const VenueIndex = React.createClass({
  getInitialState(){
    return {
      filter: this.filterCategories(),
      filterList: this.filterCategories(),
      startTime: "0",
      endTime: "2400",
      date: "",
      filterStatus: false
    }
  },


  filterCategories(){
    return ["Children & Youth", "Seniors", "Homeless & Housing", "People With Disabilities", "Environment"]
  },

  _handleCategoryChange(e){
    let value;
    if (e.target.value === "Select Category"){
      value = this.filterCategories();
    } else {
      value = [e.target.value]
    }
    this.setState({filter: value})
  },


  _filterTimes(e){
    e.preventDefault();

    let startTime = e.target[0].value.replace(":", "")
    let endTime = e.target[1].value.replace(":", "")

    this.setState({startTime: startTime, endTime: endTime, filterStatus: true})
  },

  _handleDateChange(e){
    e.preventDefault();
    this.setState({date: e.target.value, filterStatus: true})
  },

  _resetFilters(){
    this.setState({
      filter: this.filterCategories(),
      filterList: this.filterCategories(),
      startTime: "0",
      endTime: "2400",
      date: "",
      filterStatus: false
    });
  },

  render(){

    let VenueItems = this.props.venues.map(venue => {
      let ValidTime = false
      let ValidDate = false
      let that = this
      let OccasionFilters = {startTime: this.state.startTime, endTime: this.state.endTime,
         date: this.state.date, filterStatus: this.state.filterStatus}

      venue.occasions.forEach(occasion => {
        if ((occasion.start_time >= that.state.startTime) && (occasion.end_time <= that.state.endTime)){
          ValidTime = true;
        }
        if (occasion.date === that.state.date || that.state.date === "") {
          ValidDate = true
        }
      })



      if( venue.display_status === true && this.state.filter.includes(venue.category)
          && ValidTime === true && ValidDate === true) {
        return <VenueIndexItem className="venue-index-item" key={venue.id} venue={venue}
                filters={OccasionFilters}/> ;
      }
    });

    let filterOptions = this.state.filterList.map(filter =>{
      return <option value={filter} key={filter}>{filter}</option>
    });
    return (
      <div className="searchContent">
        <div className="filter-bar">
          <h4>Refine Search</h4>
          <br/>
          <p>Zoom to your neighborhood to find volunteer opportunites near you</p>
          <div>
            <select onChange={this._handleCategoryChange}>
              <option value="Select Category">Select Category</option>
              {filterOptions}
            </select>
          </div>
          <div className="date">
            <input type="date" onChange={this._handleDateChange}/>
          </div>
          <form onSubmit={this._filterTimes}>
            <p>Between what times(24hr)?</p>
            <span>
              <h7>Start</h7> &nbsp;
              <input type="time" className="start-time" onChange={this._timeSetter}/>
            </span>
            <br/>
            <span>
            <h7>End</h7>&nbsp;&nbsp;&nbsp;
            <input type="time" className="end-time" onChange={this._timeSetter}/>
              </span>
              <br/>
          <input type="submit" value="Check Times"/>
          </form>
          <br/>
          <br/>
          <button onClick={this._resetFilters}>Clear Filters</button>
        </div>
        <Masonry className="venue-items">
          {VenueItems}
        </Masonry>
      </div>
    )
  },

})


module.exports = VenueIndex;

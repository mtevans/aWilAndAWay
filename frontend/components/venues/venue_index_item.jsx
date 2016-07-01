const React = require('react');
const Modal = require("react-modal");
const VenueShowModal = require('./venue_show_modal.jsx');
const VenueOccasionShow = require('./venue_occasions_show.jsx');


const VenueIndexItem = React.createClass({
  getInitialState(){
    return {
      modalOpen: false,
      occasionsOpen: false
    }
  },

  _handleClick (bool){
    this.setState({modalOpen: true})
  },

  onModalClose (){
    this.setState({modalOpen: false, occasionsOpen: false})
  },

  toggleOccasions(){
    this.setState({occasionsOpen: !(this.state.occasionsOpen)});
  },

  render(){
    const venue = this.props.venue
    let modalContent;
    if(this.state.occasionsOpen) {
        modalContent = <VenueOccasionShow venue={venue} toggleOccasions={this.onModalClose} /> ;
      } else {
        modalContent = <VenueShowModal venue={venue} toggleOccasions={this.toggleOccasions}/> ;
      }

    return (
      <div className= "venue-list-item">
        <img src={venue.url} className="venue-thumbnail"
        onClick={this._handleClick}>
        </img>
        <p >{venue.title}</p>
        <p>{venue.about}</p>

        <Modal
            isOpen={this.state.modalOpen}
            onRequestClose={this.onModalClose}
            className="venue-modal">
            <div className="venue-modal-content">
              {modalContent}
            <button className="close-button" onClick={this.onModalClose}>Close</button>

          </div>
        </Modal>
      </div>
    )
  }
});


module.exports = VenueIndexItem;

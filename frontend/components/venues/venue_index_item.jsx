const React = require('react');
const Modal = require("react-modal");
const VenueShowModal = require('./venue_show_modal.jsx');
const VenueOccasionShow = require('./venue_occasions_show.jsx');

const VenueIndexItem = React.createClass({
  getInitialState(){
    return {
      modalOpen: this.props.venue.modal_status,
      occasionsOpen: false,
      loggedIn: SessionStore.isUserLoggedIn()
    }
  },

  _handleClick (){
    // should be able to refactor using this.setState = true or false.
      this.props.venue.modal_status = true
      this.setState({modalOpen: this.props.venue.modal_status})
  },

  onModalClose (){
    this.props.venue.modal_status = false
    this.setState({modalOpen: this.props.venue.modal_status, occasionsOpen: false})
  },

  toggleOccasions(){
    this.setState({occasionsOpen: !(this.state.occasionsOpen)});
  },

  switchModals(){
    this.setState({
      occasionsOpen: !(this.state.occasionsOpen),
      modalOpen: !(this.state.modalOpen)
    })
  },

  generateNavBar(){
    if (this.state.modalOpen){
      return ( <div className="modal-nav-bar">
                <a className="white">Description</a>
                <a onClick={this.switchModals}>Times</a>
              </div> )
    } else {
      return(<div className="modal-nav-bar">
                <a onClick={this.switchModals}>Description</a>
                <a className="white" >Times</a>
            </div> )
    }
  },

  render(){

    const venue = this.props.venue
    let modalContent;
    if(this.state.occasionsOpen) {
        modalContent = <VenueOccasionShow venue={venue} modalOpen={this.state.modalOpen} filters={this.props.filters} toggleOccasions={this.switchModals}/> ;
      } else {
        modalContent = <VenueShowModal venue={venue} modalOpen={this.state.modalOpen} toggleOccasions={this.switchModals}/> ;
      }
      let navbar  = this.generateNavBar();
    return (
      <div className= "venue-list-item">
          <img src={venue.url} className="venue-thumbnail"
          onClick={this._handleClick}>
          </img>
        <content className="thumbnail-info">
          <p >{venue.title}</p>
          <p>{venue.about}</p>
        </content>

        <Modal
            isOpen={this.props.venue.modal_status}
            onRequestClose={this.onModalClose}
            className="venue-modal">
            <div className="venue-modal-content">
              {modalContent}
            <button className="close-button" onClick={this.onModalClose}>X</button>

            {navbar}
          </div>
        </Modal>
      </div>
    )
  }
});


module.exports = VenueIndexItem;

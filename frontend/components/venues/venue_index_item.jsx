const React = require('react');
const Modal = require("react-modal");
const VenueShowModal = require('./venue_show_modal.jsx');
const VenueOccasionShow = require('./venue_occasions_show.jsx');

const VenueIndexItem = React.createClass({
  getInitialState(){
    return {
      modalOpen: this.props.venue.modal_status,
      occasionsOpen: false,
      loggedIn: SessionStore.isUserLoggedIn(),
      classWhite: false
    }
  },

  _handleClick (){
    // should be able to refactor using this.setState = true or false.
      this.props.venue.modal_status = true
      this.setState({modalOpen: this.props.venue.modal_status})
  },

  onModalClose (){
    this.props.venue.modal_status = false
    this.setState({modalOpen: this.props.venue.modal_status, occasionsOpen: false, classWhite: false })
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

  toggleWhite(){
    this.setState({classWhite: !this.state.classWhite,
      occasionsOpen: !(this.state.occasionsOpen),
      modalOpen: !(this.state.modalOpen)})
  },

  generateNavBar(){
    if (!this.state.classWhite){
      return ( <a></a> )
    } else {
      return(<div className="modal-nav-bar">
                <a onClick={this.toggleWhite}> Back To Description</a>
            </div> )
    }
  },

  render(){

    const venue = this.props.venue
    let modalContent;
    if(this.state.occasionsOpen) {
        modalContent = <VenueOccasionShow venue={venue} modalOpen={this.state.modalOpen} filters={this.props.filters} toggleWhite={this.toggleWhite} toggleOccasions={this.switchModals}/> ;
      } else {
        modalContent = <VenueShowModal venue={venue} modalOpen={this.state.modalOpen} toggleWhite={this.toggleWhite} toggleOccasions={this.switchModals}/> ;
      }
      let navbar  = this.generateNavBar();
      let button =  <button className="close-button" onClick={this.onModalClose}>X</button>
      if (this.state.occasionsOpen){ button =  <button className="modal-close-button" onClick={this.onModalClose}>X</button>}
    return (
      <div className= "venue-list-item">
          <img src={venue.url} className="venue-thumbnail"
          onClick={this._handleClick}>
          </img>
        <content className="thumbnail-info">
          <p className="index-title" >{venue.title}</p>
          <p className="about-elipsed">{venue.about}</p>
        </content>

        <Modal
            isOpen={this.props.venue.modal_status}
            onRequestClose={this.onModalClose}
            className="venue-modal">
            <div className="venue-modal-content">
              {modalContent}
              {button}
              {navbar}
          </div>
        </Modal>
      </div>
    )
  }
});


module.exports = VenueIndexItem;

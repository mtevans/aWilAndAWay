const React = require('react');
const SessionStore = require('../../stores/session_store.js');
const VenueActions = require('../../actions/venues_actions.js');
const Modal = require("react-modal");
const CreationMap = require("./creation_map.jsx");

const createVenueForm = React.createClass({

  getInitialState(){
    return {
      createModal: false,
      title: "",
      about: "",
      description: "",
      email: "",
      address: "",
      lat: "",
      lng: "",
      category: "",
      url: "http://res.cloudinary.com/dfld7chk4/image/upload/v1467237098/defualt_pic_st9qj2.jpg",
      organizer_id: SessionStore.currentUser().id
    };
  },

  toggleCreateModal(){
      this.setState(
        {createModal: !(this.state.createModal)}
      )
  },

  _onChange(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

  _handleCategoryChange(e){
    let value;
    if (e.target.value === "Select Category"){
      value = this.filterCategories();
    } else {
      value = e.target.value
    }
    this.setState({category: value})
  },

  upload(e) {
     e.preventDefault();
     cloudinary.openUploadWidget(CLOUDINARY_OPTIONS, function(error, results){
       if(!error){
         this.setState({ url: results[0].url})
       }
     }.bind(this));
   },

  updateFromMap(obj){
    this.setState({
      address: obj.address,
      lat: obj.lat,
      lng: obj.lng
    })
  },

  createVenue(e){
    e.preventDefault();
    VenueActions.createVenue(this.state)
    this.toggleCreateModal()
    this.props.toggleManageVenuesModal();
  },

  render(){

    let defaultURL= "http://res.cloudinary.com/dfld7chk4/image/upload/v1467237098/defualt_pic_st9qj2.jpg";
    const filterCategories = ["Children & Youth", "Seniors", "Homeless & Housing", "People With Disabilities", "Environment"]
    let filterOptions = filterCategories.map(filter =>{
      return <option value={filter} key={filter}>{filter}</option>
    });
    let ImageTitle= <p>             </p>;
    if (this.state.url === defaultURL){
        ImageTitle= <p>You Currently Have The Default Image</p>;
      }

      let map= ""
      if(this.state.createModal){ map = <CreationMap updateFromMap={this.updateFromMap}/> }

    return(
      <div>
       <a onClick={this.toggleCreateModal}>Create Event</a>

        <Modal isOpen={this.state.createModal}
                onRequestClose={this.toggleCreateModal}
                className='create-modal'>
          <div className="create-modal-content">
            <div className="create-modal-details">
              <a className= "x-button" onClick={this.toggleCreateModal}>X</a>
              <input type="text" placeholder="Title" value={this.state.title} onChange={this._onChange("title")}/>
              <input type="text" placeholder="Contact Email"value={this.state.email} onChange={this._onChange("email")}/>
              <label>
                <input type="text" placeholder="About" value={this.state.about} onChange={this._onChange("about")}/>
              </label>
              <textarea type="textarea" placeholder="Provide A Description" value={this.state.description} onChange={this._onChange("description")}/>
              <select onChange={this._handleCategoryChange}>
                <option value="Select Category">Select Category</option>
                {filterOptions}
              </select>
              <p>Click on the map to register your address</p>
                <h5>Address:{this.state.address}</h5>

              {ImageTitle}
              <button className="upload" onClick={this.upload}>Change Image</button>
              <button className="create" onClick={this.createVenue}>Create!!</button>
            </div>
            <div className="modal-image-upload">
              {map}
              <img src={this.state.url} className="add-image-thumbnail"/>
            </div>
        </div>
        </Modal>
      </div>
    )
  }
})


module.exports = createVenueForm;

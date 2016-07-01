class Api::VenuesController < ApplicationController

  def index
    @venues = Venue.all
    render "api/venues/index"
  end

  def show
    @venue = Venue.find(params[:id])
    render "api/venues/show"
  end
  
end

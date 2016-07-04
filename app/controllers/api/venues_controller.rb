class Api::VenuesController < ApplicationController

  def index
    @venues = Venue.all

    if(bounds)
      @venues = Venue.in_bounds(bounds)
    end
    
    render "api/venues/index"
  end

  def show
    @venue = Venue.find(params[:id])
    render "api/venues/show"
  end

private

  def bounds
    params[:bounds]
  end

end

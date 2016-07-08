class Api::VenuesController < ApplicationController

  def index
    @venues = Venue.all

    if(bounds)
      @venues = Venue.in_bounds(bounds)
    end

    render "api/venues/index"
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      render "api/venues/show"
    else
      render json: @venue.errors.full_messages, status: 422
    end
  end

  def show
    @venue = Venue.find(params[:id])
    render "api/venues/show"
  end

private

  def bounds
    params[:bounds]
  end

  def venue_params
    params.require(:venue).permit(:title, :about, :description, :email,
    :address, :lat, :lng, :category, :url, :organizer_id)
  end

end

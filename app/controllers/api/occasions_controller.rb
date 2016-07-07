class Api::OccasionsController < ApplicationController

def create
  @occasion = Occasion.new(occasion_params)
  if @occasion.save!
    @venue = @occasion.venue
    render "api/venues/show"
  end
end


private
  def occasion_params
    params.require(:occasion).permit(:date, :start_time, :end_time, :venue_id, :organizer_id)
  end
end

class TripsController < ApplicationController
  def create
  @trip = Trip.new(params[:trip])

  @trip.save
  redirect_to @trip
end

end

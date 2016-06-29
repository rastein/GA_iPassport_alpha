class TripsController < ApplicationController
  def index
    @trip = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
  @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      render "new"
    end
  end

  def edit
    @trip = get_trip
  end

  def update
    @trip = get_trip
      if @trip.update(trip_params)
        redirect_to trips_path, notice: "Trip Updated"
      else
        render "edit"
      end
  end

  def delete
    @trip = get_trip
    @trip.destroy
    redirect_to trips_path
  end

  private
  def get_trip
    Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:trip_name, :start_date, :end_date)
  end
end

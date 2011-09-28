class TripsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :load_trip, :except => [:new,:index,:create]
  def index
    @trips=Trip.order(:name)
    respond_with @trips
  end

  def show
    respond_with @trip
  end

  protected
  
  def load_trip
    @trip = Trip.find(params[:id])
  end
end

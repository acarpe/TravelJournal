class TripsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :load_trip, :except => [:new,:index,:create]
  def index
    @trips=Trip.order(:name)
    respond_with @trips
  end

  def show
    
  end
end

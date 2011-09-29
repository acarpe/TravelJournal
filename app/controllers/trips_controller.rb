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

  def new
    @trip = Trip.new
    @hotels = Hotel.order(:name)
  end

  def create
    @trip = Trip.new(params[:trip])
    if @trip.save
      redirect_to @trip
    else
      @hotels = Hotel.order(:name)
      @errors = @trip.errors.full_messages.join("\n")
      render :new
    end
  end

  def edit
    @hotels = Hotel.order(:name)
  end

  def update
    if @trip.update_attributes(params[:trip])
      redirect_to @trip
    else
      @hotels = Hotel.order(:name)
      @errors = @trip.errors.full_messages.join("\n")
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to(trips_url)
  end

  protected
  
  def load_trip
    @trip = Trip.find(params[:id])
  end
end

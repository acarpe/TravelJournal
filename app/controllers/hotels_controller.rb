class HotelsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :load_hotel, :except => [:new, :index, :create]

  def index
    @hotels = Hotel.order(:name)
    respond_with @hotels
  end

  def show
  end

  def new
    @hotel = Hotel.new
    @cities = City.order(:name)
  end

  def create
    @hotel = Hotel.new(params[:hotel])
    if @hotel.save
      redirect_to @hotel
    else
      @cities = City.order(:name)
      @errors = @hotel.errors.full_messages.join("\n")
      render :new
    end
  end

  protected
  def load_hotel
    @hotel =  Hotel.find(params[:id])
  end
end

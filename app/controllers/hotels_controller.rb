class HotelsController < ApplicationController
  respond_to :html, :xml, :json, :js
  before_filter :load_hotel, :except => [:new, :index, :create]

  def index
    @hotels = Hotel.order(order_by_clause)
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

  def edit
    @cities = City.order(:name)
  end

  def update
    if @hotel.update_attributes(params[:hotel])
      redirect_to @hotel
    else
      @errors = @hotel.errors.full_messages.join("\n")
      @cities = City.order(:name)
      render :edit
    end
  end

  def destroy
    @hotel.destroy
    redirect_to(hotels_url)
  end

  protected
  def load_hotel
    @hotel =  Hotel.find(params[:id])
  end

  def order_by_clause
    if params[:commit] == "Sort"
      column_name = params[:sort_column]
      sort_order = params[:ascending] ? "ASC" : "DESC"
      "#{column_name} #{sort_order}"
    else
      "name"
    end
  end
end

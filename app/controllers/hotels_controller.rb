class HotelsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :load_hotel, :except => [:new, :index, :create]

  def index
    @hotels = Hotel.order(:name)
    respond_with @hotels
  end

  def show
  end

  protected
  def load_hotel
    @hotel =  Hotel.find(params[:id])
  end
end

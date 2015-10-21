class FlatsController < ApplicationController
  def index
    @flats = Flat.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      end
  end

  def show
    @flat = Flat.find(params[:id])
  end
end

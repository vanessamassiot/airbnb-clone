class FlatsController < ApplicationController
  def index
    if params[:address]== nil
     @flats    = Flat.all
   else
     address_elements = params[:address].split(', ')
     @flats = Flat.where(city: address_elements[-2])
   end

    geo_flats = @flats.where.not(latitude: nil, longitude: nil)

    # Let's DYNAMICALLY build the markers for the view.
    @hash = Gmaps4rails.build_markers(geo_flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      marker.infowindow render_to_string(:partial => "/flats/map_box", locals: {flat: flat})
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end
end

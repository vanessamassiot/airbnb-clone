class FlatsController < ApplicationController
  def index
    @flats    = Flat.all
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

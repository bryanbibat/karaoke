class PagesController < ApplicationController
  def index
  end

  def geolocate
    @bars = KaraokePlace.search "*", per_page: 10, boost_by_distance: { field: :location, origin: [params[:lat].to_f, params[:long].to_f] }
  end
end

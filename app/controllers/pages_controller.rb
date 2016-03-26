class PagesController < ApplicationController
  def index
    @keys = KaraokeSong.order(created_at: :desc).limit(5)
    @artists = Artist.order(created_at: :desc).limit(5)
    @article = Article.order(published_at: :desc).first
  end

  def geolocate
    @bars = KaraokePlace.search "*", per_page: 10, boost_by_distance: { field: :location, origin: [params[:lat].to_f, params[:long].to_f] }
  end
end

class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name).all
  end

  def show
    @artist = Artist.includes(:songs).friendly.find(params[:id])
  end
end

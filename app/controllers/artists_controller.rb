class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name).page params[:page]
  end

  def show
    @artist = Artist.includes(:songs).friendly.find(params[:id])
  end
end

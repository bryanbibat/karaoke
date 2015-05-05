class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name).page params[:page]
  end

  def show
    @artist = Artist.includes(:songs, :collaborations, :collaborators).friendly.find(params[:id])
  end
end

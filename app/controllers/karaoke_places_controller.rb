class KaraokePlacesController < ApplicationController
  def index
    @bars = KaraokePlace.order(:name)
  end

  def show
    @bar = KaraokePlace.friendly.find(params[:id])
  end
end

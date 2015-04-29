class KaraokePlacesController < ApplicationController
  def index
  end

  def show
    @bar = KaraokePlace.friendly.find(params[:id])
  end
end

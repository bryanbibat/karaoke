class KaraokePlacesController < ApplicationController
  def index
    @bars = KaraokePlace.where(active: true).order(:name).includes(:karaoke_machine)
  end

  def show
    @bar = KaraokePlace.friendly.find(params[:id])
  end
end

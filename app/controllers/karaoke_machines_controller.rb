class KaraokeMachinesController < ApplicationController
  def index
    @devices = KaraokeMachine.order(:name).all
  end

  def show
    @device = KaraokeMachine.friendly.find(params[:id])
  end

  def ktvs
    @device = KaraokeMachine.includes(:karaoke_places).friendly.find(params[:id])
  end

  def songs
    #TODO SQL
    @device = KaraokeMachine.includes(karaoke_songs: { song: :artist }).friendly.find(params[:id])
  end
end

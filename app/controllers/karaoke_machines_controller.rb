class KaraokeMachinesController < ApplicationController
  def index
    @devices = KaraokeMachine.order(:name).all
  end

  def show
    @device = KaraokeMachine.includes(:karaoke_places).friendly.find(params[:id])
  end

  def ktvs
    @device = KaraokeMachine.includes(:karaoke_places).friendly.find(params[:id])
  end

  def songs
    @device = KaraokeMachine.friendly.find(params[:id])
    @songs = Song.includes(:artist)
      .select(:slug, :name, :original_name, :notes, :key, :artist_id)
      .joins('LEFT OUTER JOIN karaoke_songs ON karaoke_songs.song_id = songs.id')
      .where('karaoke_songs.karaoke_machine_id = ?', @device.id)
      .order(:name)
      .page params[:page]
    if params[:initial].present? 
      if valid_initial
        @songs = @songs.where("name like '#{params[:initial]}%'")
      else
        redirect_to songs_karaoke_machine_path(params[:id])
      end
    end
  end
end

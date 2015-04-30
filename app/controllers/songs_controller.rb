class SongsController < ApplicationController
  def index
    @songs = Song.includes(:artist).order(:name).page params[:page]
  end

  def show
    @song = Song.includes(karaoke_songs: :karaoke_machine).friendly.find(params[:id])
  end
end

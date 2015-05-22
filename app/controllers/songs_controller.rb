class SongsController < ApplicationController
  def index
    @songs = Song.includes(:artist, :karaoke_machines).order(:name).page params[:page]
    if params[:initial].present?
      if valid_initial
        @songs = @songs.where("name like '#{params[:initial]}%'")
      else
        redirect_to songs_path
      end
    end
  end

  def show
    @song = Song.includes(karaoke_songs: :karaoke_machine).friendly.find(params[:id])
  end
end

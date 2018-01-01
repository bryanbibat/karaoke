class SongsController < ApplicationController
  def index
    j_karaoke_invite
    @songs = Song.includes(:artist, :karaoke_machines).order(:name).page params[:page]
    if params[:initial].present?
      if valid_initial
        @songs = @songs.where("name ilike '#{params[:initial]}%'")
      else
        redirect_to songs_path
      end
    end
  end

  def show
    @song = Song.includes(karaoke_songs: :karaoke_machine).friendly.find(params[:id])
    if @song.tag_list.include? "Japanese"
      j_karaoke_invite
    end
  end
end

class SongsController < ApplicationController
  def index
    if params[:initial].present?
      if ('A'..'Z').include?(params[:initial])
        @songs = Song.where("name like '#{params[:initial]}%'").includes(:artist).order(:name).page params[:page]
      else
        redirect_to songs_path
      end
    else
      @songs = Song.includes(:artist).order(:name).page params[:page]
    end
  end

  def show
    @song = Song.includes(karaoke_songs: :karaoke_machine).friendly.find(params[:id])
  end
end

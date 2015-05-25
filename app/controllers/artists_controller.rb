class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name).page params[:page]
    if params[:initial].present?
      if valid_initial
        @artists = @artists.where("name like '#{params[:initial]}%'")
      else
        redirect_to artists_path
      end
    end
  end

  def show
    @artist = Artist.includes({ songs: { karaoke_songs: :karaoke_machine }}, :collaborations, :collaborators).friendly.find(params[:id])
  end
end

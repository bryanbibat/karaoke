class ArtistsController < ApplicationController
  def index
    j_karaoke_invite
    @artists = Artist.order(:name).page params[:page]
    if params[:initial].present?
      if valid_initial
        @artists = @artists.where("name ilike '#{params[:initial]}%'")
      else
        redirect_to artists_path
      end
    end
  end

  def show
    @artist = Artist.includes({ songs: { karaoke_songs: :karaoke_machine }}, :collaborations, :collaborators).friendly.find(params[:id])

    if @artist.tag_list.include? "Japanese"
      j_karaoke_invite
    end
  end
end

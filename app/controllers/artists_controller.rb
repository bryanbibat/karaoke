class ArtistsController < ApplicationController
  def index
    if params[:initial].present?
      if valid_initial
        @artists = Artist.where("name like '#{params[:initial]}%'").order(:name).page params[:page]
      else
        redirect_to artists_path
      end
    else
      @artists = Artist.order(:name).page params[:page]
    end
  end

  def show
    @artist = Artist.includes(:songs, :collaborations, :collaborators).friendly.find(params[:id])
  end
end

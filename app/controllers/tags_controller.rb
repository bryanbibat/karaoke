class TagsController < ApplicationController
  def index
    @place_tags = KaraokePlace.tag_counts_on(:tags)
    @artist_tags = Artist.tag_counts_on(:tags)
    @song_tags = Song.tag_counts_on(:tags)
  end

  def show
    @bars = KaraokePlace.tagged_with(params[:id]).order(:name).page(1)
    @artists = Artist.tagged_with(params[:id]).order(:name).page(1)
    @songs = Song.tagged_with(params[:id]).order(:name).page(1)
  end

  def artist
    @artists = Artist.tagged_with(params[:id]).order(:name).page(params[:page])
  end

  def song
    @songs = Song.tagged_with(params[:id]).order(:name).page(params[:page])
  end

  def place
    @bars = KaraokePlace.tagged_with(params[:id]).order(:name).page(params[:page])
  end
end

class SearchesController < ApplicationController
  def show
    @remove_paginate = true
    @bars = KaraokePlace.search params[:q], include: [:karaoke_machine]
    @songs = Song.search params[:q], include: [:artist], per_page: 10
    @artists = Artist.search params[:q], per_page: 10
  end

  def artist
    @artists = Artist.search params[:q], per_page: 25, page: params[:page]
  end

  def song
    @songs = Song.search params[:q], include: [:artist], per_page: 25, page: params[:page]
  end
end

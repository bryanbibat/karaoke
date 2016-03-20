class SearchesController < ApplicationController

  def show
    @remove_paginate = true
    @bars = KaraokePlace.search params[:q], include: [:karaoke_machine]
    @songs = Song.search params[:q], include: [:artist, :karaoke_machines], per_page: 10
    @artists = Artist.search params[:q], per_page: 10
    if @songs.any? { |s| s.tag_list.include? "Japanese" } ||
       @artists.any? { |a| a.tag_list.include? "Japanese" }
      j_karaoke_invite
    end
    @articles = Article.highlighted_search params[:q]
  end

  def artist
    @artists = Artist.search params[:q], per_page: 25, page: params[:page]
    if @artists.any? { |a| a.tag_list.include? "Japanese" }
      j_karaoke_invite
    end
  end

  def song
    @songs = Song.search params[:q], include: [:artist, :karaoke_machines], per_page: 25, page: params[:page]
    if @songs.any? { |s| s.tag_list.include? "Japanese" }
      j_karaoke_invite
    end
  end
end

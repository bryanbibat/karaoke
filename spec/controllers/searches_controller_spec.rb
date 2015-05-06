require 'rails_helper'

RSpec.describe SearchesController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      KaraokePlace.reindex
      Artist.reindex
      Song.reindex
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #song" do
    it "returns http success" do
      get :song, q: "test"
      Song.reindex
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #artist" do
    it "returns http success" do
      Artist.reindex
      get :artist, q: "test"
      expect(response).to have_http_status(:success)
    end
  end
end

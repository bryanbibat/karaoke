require 'rails_helper'

RSpec.describe SearchesController, type: :controller do

  describe "GET #show" do
    render_views
    it "returns http success" do
      KaraokePlace.reindex
      Artist.reindex
      Song.reindex
      get :show
      expect(response).to have_http_status(:success)
    end

    it "returns a result" do
      FactoryGirl.create(:karaoke_place)
      FactoryGirl.create(:song)
      FactoryGirl.create(:artist)
      KaraokePlace.reindex
      Artist.reindex
      Song.reindex
      get :show, q: "MyString"
      expect(response.body).to match(/<td><a/)
    end

    it "returns a result for song number" do
      FactoryGirl.create(:song)
      FactoryGirl.create(:karaoke_song)
      KaraokePlace.reindex
      Artist.reindex
      Song.reindex
      get :show, q: "12345"
      expect(response.body).to match(/<td><a/)
    end
  end

  describe "GET #song" do
    it "returns http success" do
      FactoryGirl.create(:song)
      Song.reindex
      get :song, q: "MyString"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #artist" do
    it "returns http success" do
      FactoryGirl.create(:artist)
      Artist.reindex
      get :artist, q: "MyString"
      expect(response).to have_http_status(:success)
    end
  end
end

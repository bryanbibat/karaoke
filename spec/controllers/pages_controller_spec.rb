require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #geolocate" do
    it "returns http success" do
      FactoryGirl.create(:karaoke_place)
      KaraokePlace.reindex
      get :geolocate, lat: "13", long: "122"
      expect(response).to have_http_status(:success)
    end
  end
end

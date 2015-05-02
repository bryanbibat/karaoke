require 'rails_helper'

RSpec.describe TagsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: "test"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #artist" do
    it "returns http success" do
      get :artist, id: "test"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #song" do
    it "returns http success" do
      get :song, id: "test"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #place" do
    it "returns http success" do
      get :place, id: "test"
      expect(response).to have_http_status(:success)
    end
  end

end

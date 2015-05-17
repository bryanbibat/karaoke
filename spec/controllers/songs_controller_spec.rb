require 'rails_helper'

RSpec.describe SongsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns http success on filtering by initial" do
      get :index, initial: "A"
      expect(response).to have_http_status(:success)
    end

    it "returns http redirect on filtering by wrong initial" do
      get :index, initial: "a"
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      song = FactoryGirl.create(:song)
      get :show, id: song.slug
      expect(response).to have_http_status(:success)
    end
  end

end

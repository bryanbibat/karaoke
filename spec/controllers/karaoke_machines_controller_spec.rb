require 'rails_helper'

RSpec.describe KaraokeMachinesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      device = FactoryGirl.create(:karaoke_machine)
      get :show, id: device.slug
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #ktvs" do
    it "returns http success" do
      device = FactoryGirl.create(:karaoke_machine)
      get :ktvs, id: device.slug
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #songs" do
    it "returns http success" do
      device = FactoryGirl.create(:karaoke_machine)
      get :songs, id: device.slug
      expect(response).to have_http_status(:success)
    end
  end
end

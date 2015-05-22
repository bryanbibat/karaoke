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
    before(:each) do
      @device = FactoryGirl.create(:karaoke_machine)
    end

    it "returns http success" do
      get :songs, id: @device.slug
      expect(response).to have_http_status(:success)
    end

    it "returns http success on filtering by initial" do
      get :songs, id: @device.slug, initial: "A"
      expect(response).to have_http_status(:success)
    end

    it "returns http redirect on filtering by wrong initial" do
      get :songs, id: @device.slug, initial: "a"
      expect(response).to have_http_status(:redirect)
    end
  end
end

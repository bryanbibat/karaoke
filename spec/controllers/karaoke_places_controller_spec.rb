require 'rails_helper'

RSpec.describe KaraokePlacesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      bar = FactoryGirl.create(:karaoke_place)
      get :show, id: bar.slug
      expect(response).to have_http_status(:success)
    end
  end

end

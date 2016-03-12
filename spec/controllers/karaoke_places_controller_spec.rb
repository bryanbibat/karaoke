require 'rails_helper'

RSpec.describe KaraokePlacesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      FactoryGirl.create(:karaoke_place)
      get :index
      expect(response).to have_http_status(:success)
      expect(assigns[:bars]).to_not be_empty
    end

    it "should not return an inactive place" do
      FactoryGirl.create(:karaoke_place, active: false)
      get :index
      expect(assigns[:bars]).to be_empty
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

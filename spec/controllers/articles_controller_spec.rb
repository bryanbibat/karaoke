require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      FactoryGirl.create(:article)
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns http success on page 2" do
      10.times { FactoryGirl.create(:article) }
      get :index, page: 2
      expect(response).to have_http_status(:success)
      expect(assigns[:articles].count).to eql(3)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: FactoryGirl.create(:article).slug
      expect(response).to have_http_status(:success)
    end
  end

end

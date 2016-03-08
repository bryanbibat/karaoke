require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show, id: FactoryGirl.create(:article).slug
      expect(response).to have_http_status(:success)
    end
  end

end

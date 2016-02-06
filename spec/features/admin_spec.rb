require 'rails_helper'

describe 'Admin' do
  describe "Admin Role" do
    it "can access admin admin" do
      visit new_admin_session_path
      user = FactoryGirl.create(:admin)
      fill_in 'Email', :with => user.email
      fill_in 'Password', :with => user.password
      click_button 'Log in'
      visit rails_admin.index_path(model_name: 'admin')
      expect(page).to have_content "List of Admins"
    end
  end

  describe "Basic Admin Role" do
    it "can't access admin admin" do
      visit new_admin_session_path
      user = FactoryGirl.create(:admin, role: nil)
      fill_in 'Email', :with => user.email
      fill_in 'Password', :with => user.password
      click_button 'Log in'
      visit rails_admin.index_path(model_name: 'admin')
      expect(page).to have_content "You are not authorized to access this page."
    end
  end
end

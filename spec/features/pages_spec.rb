require 'rails_helper'

describe 'Pages' do
  subject { page }

  describe 'Home page' do
    before { visit root_path }
    it { should have_title(Rails.application.config.title) }
  end
end

require 'rails_helper'

describe 'Songs' do
  subject { page }

  describe 'Index page' do
    before do
      FactoryGirl.create(:karaoke_song)
      visit songs_path
    end

    it { should have_title("Songs | #{Rails.application.config.title}") }
  end
end

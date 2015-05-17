# == Schema Information
#
# Table name: artists
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#  original_name :string
#

require 'rails_helper'

RSpec.describe Artist, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:songs) }
  it { should have_many(:collabs) }
  it { should have_many(:collaborations) }
  it { should have_many(:members) }
  it { should have_many(:collaborators) }

  it "should get description HTML" do
    artist = FactoryGirl.create(:artist, description: "*test*")
    expect(artist.description_html).to eq "<p><em>test</em></p>\n"
  end
end

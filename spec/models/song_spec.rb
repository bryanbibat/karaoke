# == Schema Information
#
# Table name: songs
#
#  id            :integer          not null, primary key
#  name          :string
#  original_name :string
#  description   :text
#  released_at   :date
#  artist_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#  notes         :string
#

require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:artist) }
  it { should belong_to(:artist) }
end

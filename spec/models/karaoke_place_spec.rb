# == Schema Information
#
# Table name: karaoke_places
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  karaoke_machine_id :integer
#  latitude           :decimal(9, 6)
#  longitude          :decimal(9, 6)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  slug               :string
#  address            :string
#

require 'rails_helper'

RSpec.describe KaraokePlace, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
  it { should belong_to(:karaoke_machine) }
end

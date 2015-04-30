# == Schema Information
#
# Table name: karaoke_songs
#
#  id                 :integer          not null, primary key
#  key                :string
#  song_id            :integer
#  karaoke_machine_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe KaraokeSong, type: :model do
  it { should validate_presence_of(:key) }
  it { should validate_presence_of(:song) }
  it { should belong_to(:song) }
  it { should validate_presence_of(:karaoke_machine) }
  it { should belong_to(:karaoke_machine) }
end

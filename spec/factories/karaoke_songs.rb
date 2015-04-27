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

FactoryGirl.define do
  factory :karaoke_song do
    key "MyString"
song nil
karaoke_machine nil
  end

end

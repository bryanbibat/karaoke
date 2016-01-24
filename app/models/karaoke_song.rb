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

class KaraokeSong < ActiveRecord::Base
  belongs_to :song
  belongs_to :karaoke_machine, touch: true

  validates :key, :song, :karaoke_machine, presence: true

  has_paper_trail
end

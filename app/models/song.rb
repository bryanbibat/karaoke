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

class Song < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :artist, inverse_of: :songs
  has_many :karaoke_songs, inverse_of: :song
  has_many :karaoke_machines, -> { uniq.order(:name) }, through: :karaoke_songs, inverse_of: :songs

  validates :name, :artist, presence: true

  acts_as_taggable
  has_paper_trail

  include CommonMethods

  searchkick word_middle: [:name]

  def search_data
    {
      name: name,
      description: description,
      original_name: original_name,
      notes: notes,
      song_keys: song_keys
    }
  end

  def song_keys
    karaoke_songs.map(&:key)
  end
end

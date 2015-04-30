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
#

class Song < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :artist, inverse_of: :songs
  has_many :karaoke_songs, inverse_of: :song

  validates :name, :artist, presence: true
end

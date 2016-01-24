# == Schema Information
#
# Table name: karaoke_machines
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#

class KaraokeMachine < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :karaoke_places, inverse_of: :karaoke_machine
  has_many :franchises, inverse_of: :karaoke_machine
  has_many :karaoke_songs, inverse_of: :karaoke_machine
  has_many :songs, -> { uniq }, through: :karaoke_songs, inverse_of: :karaoke_machines

  validates :name, presence: true

  has_paper_trail

  include CommonMethods

  def display_mark_text
    mark_text || name[0]
  end

  def display_mark_class
    mark_class || "default"
  end
end

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

class Artist < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :songs, inverse_of: :artist

  validates :name, presence: true

  acts_as_taggable

  include CommonMethods
end

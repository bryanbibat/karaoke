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
  has_many :collabs, foreign_key: :collaborator_id, class_name: "Collab", inverse_of: :collaborator
  has_many :collaborations, through: :collabs

  has_many :members, foreign_key: :collaboration_id, class_name: "Collab", inverse_of: :collaboration
  has_many :collaborators, through: :members

  validates :name, presence: true

  acts_as_taggable

  include CommonMethods

  searchkick word_middle: [:name]

  def search_data
    {
      name: name,
      description: description,
      original_name: original_name,
      tags: tag_list
    }
  end
end

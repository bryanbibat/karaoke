class Franchise < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true

  has_many :karaoke_places, inverse_of: :franchise
  belongs_to :karaoke_machine, inverse_of: :karaoke_places, touch: true
end

# == Schema Information
#
# Table name: franchises
#
#  id                 :integer          not null, primary key
#  name               :string
#  slug               :string
#  description        :text
#  karaoke_machine_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Franchise < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true

  has_many :karaoke_places, inverse_of: :franchise
  belongs_to :karaoke_machine, inverse_of: :karaoke_places, touch: true

  has_paper_trail
end

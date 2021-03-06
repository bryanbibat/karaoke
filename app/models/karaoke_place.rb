# == Schema Information
#
# Table name: karaoke_places
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  karaoke_machine_id :integer
#  latitude           :decimal(9, 6)
#  longitude          :decimal(9, 6)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  slug               :string
#  address            :string
#  franchise_id       :integer
#  active             :boolean          default(TRUE)
#

class KaraokePlace < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :karaoke_machine, inverse_of: :karaoke_places, touch: true
  belongs_to :franchise, inverse_of: :karaoke_places, touch: true

  include CommonMethods

  validates :name, :latitude, :longitude, presence: true

  acts_as_taggable
  has_paper_trail

  default_scope -> { where(active: true) }

  searchkick word_middle: [:name], locations: ["location"]

  def search_data
    {
      name: name,
      description: description,
      address: address,
      tags: tag_list,
      location: [latitude, longitude]
    }
  end
end

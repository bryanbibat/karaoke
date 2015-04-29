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
#

class KaraokePlace < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :karaoke_machine, inverse_of: :karaoke_places 
end

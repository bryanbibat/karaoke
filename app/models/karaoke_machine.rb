# == Schema Information
#
# Table name: karaoke_machines
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class KaraokeMachine < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :karaoke_places, inverse_of: :karaoke_machine
end

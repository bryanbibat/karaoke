# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#

class Artist < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
end

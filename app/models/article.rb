# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  title        :string
#  admin_id     :integer
#  slug         :string
#  summary      :text
#  content      :text
#  js           :text
#  css          :text
#  thumbnail    :string
#  status       :string
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :admin

  has_paper_trail
  acts_as_taggable

end

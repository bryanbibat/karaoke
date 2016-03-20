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

  searchkick highlight: [:stripped_content]

  def search_data
    { stripped_content: stripped_content }
  end

  def stripped_content
    Loofah.fragment([title, content].join(' ')).
      to_text(encode_special_chars: false)
  end

  def self.highlighted_search q
    search q, fields:[:stripped_content], highlight: { tag: "<strong>" }
  end
end

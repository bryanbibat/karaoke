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

require 'rails_helper'

RSpec.describe Article, type: :model do
end

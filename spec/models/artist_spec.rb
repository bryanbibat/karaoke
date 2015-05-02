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

require 'rails_helper'

RSpec.describe Artist, type: :model do
  it { should validate_presence_of(:name) }
end

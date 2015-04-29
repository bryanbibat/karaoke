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

require 'rails_helper'

RSpec.describe Artist, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

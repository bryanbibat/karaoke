# == Schema Information
#
# Table name: songs
#
#  id            :integer          not null, primary key
#  name          :string
#  original_name :string
#  description   :text
#  released_at   :date
#  artist_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#

require 'rails_helper'

RSpec.describe Song, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

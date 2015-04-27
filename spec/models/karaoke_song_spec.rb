# == Schema Information
#
# Table name: karaoke_songs
#
#  id                 :integer          not null, primary key
#  key                :string
#  song_id            :integer
#  karaoke_machine_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe KaraokeSong, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

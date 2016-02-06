# == Schema Information
#
# Table name: karaoke_machines
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  mark_text   :string
#  mark_class  :string
#

require 'rails_helper'

RSpec.describe KaraokeMachine, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:karaoke_places) }
  it { should have_many(:franchises) }
  it { should have_many(:karaoke_songs) }
end

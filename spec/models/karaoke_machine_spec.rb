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
#

require 'rails_helper'

RSpec.describe KaraokeMachine, type: :model do
  it { should validate_presence_of(:name) }
end

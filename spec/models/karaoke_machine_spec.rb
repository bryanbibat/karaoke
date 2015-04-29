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
  pending "add some examples to (or delete) #{__FILE__}"
end

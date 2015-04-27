# == Schema Information
#
# Table name: karaoke_machines
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class KaraokeMachine < ActiveRecord::Base
end

# == Schema Information
#
# Table name: collabs
#
#  id               :integer          not null, primary key
#  collaborator_id  :integer
#  collaboration_id :integer
#  role             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe Collab, type: :model do
  it { should belong_to(:collaborator) }
  it { should belong_to(:collaboration) }
end

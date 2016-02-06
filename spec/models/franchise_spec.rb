# == Schema Information
#
# Table name: franchises
#
#  id                 :integer          not null, primary key
#  name               :string
#  slug               :string
#  description        :text
#  karaoke_machine_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe Franchise, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:karaoke_places) }
  it { should belong_to(:karaoke_machine) }
end

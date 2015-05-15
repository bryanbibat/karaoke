require 'rails_helper'

RSpec.describe Franchise, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:karaoke_places) }
  it { should belong_to(:karaoke_machine) }
end

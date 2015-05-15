require 'rails_helper'

RSpec.describe Franchise, type: :model do
  it { should validate_presence_of(:name) }
end

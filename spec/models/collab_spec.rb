require 'rails_helper'

RSpec.describe Collab, type: :model do
  it { should belong_to(:collaborator) }
  it { should belong_to(:collaboration) }
end

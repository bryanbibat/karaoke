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

FactoryGirl.define do
  factory :collab do
    collaborator_id 1
collaboration_id 1
role "MyString"
  end

end

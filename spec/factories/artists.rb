# == Schema Information
#
# Table name: artists
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#  original_name :string
#

FactoryGirl.define do
  factory :artist do
    name "MyString"
    description "MyText"
  end

end

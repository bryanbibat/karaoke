# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#

FactoryGirl.define do
  factory :artist do
    name "MyString"
bio "MyText"
  end

end

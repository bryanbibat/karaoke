# == Schema Information
#
# Table name: songs
#
#  id            :integer          not null, primary key
#  name          :string
#  original_name :string
#  description   :text
#  released_at   :date
#  artist_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#

FactoryGirl.define do
  factory :song do
    name "MyString"
    original_name "MyString"
    description "MyText"
    released_at "2015-04-14"
    artist
  end

end

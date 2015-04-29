# == Schema Information
#
# Table name: karaoke_places
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  karaoke_machine_id :integer
#  latitude           :decimal(9, 6)
#  longitude          :decimal(9, 6)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  slug               :string
#

FactoryGirl.define do
  factory :karaoke_place do
    name "MyString"
    description "MyText"
    slug "mystring"
    karaoke_machine nil
    latitude "9.99"
    longitude "9.99"
  end

end

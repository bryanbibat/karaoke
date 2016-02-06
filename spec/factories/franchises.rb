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

FactoryGirl.define do
  factory :franchise do
    name "MyString"
slug "MyString"
description "MyText"
karaoke_machine nil
  end

end

# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  title        :string
#  admin_id     :integer
#  slug         :string
#  summary      :text
#  content      :text
#  js           :text
#  css          :text
#  thumbnail    :string
#  status       :string
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :article do
    title "MyString"
    admin nil
    slug "my-string"
    summary "MyText"
    thumbnail "MyString"
    status "MyString"
    published_at "2016-03-09 01:37:02"
    content "MyString"
  end
end

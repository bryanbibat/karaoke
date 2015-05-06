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

class Collab < ActiveRecord::Base
  belongs_to :collaborator, foreign_key: :collaborator_id, class_name: "Artist", inverse_of: :collabs
  belongs_to :collaboration, foreign_key: :collaboration_id, class_name: "Artist", inverse_of: :members
end

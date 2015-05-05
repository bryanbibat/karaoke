class Collab < ActiveRecord::Base
  belongs_to :collaborator, foreign_key: :collaborator_id, class_name: "Artist", inverse_of: :collabs
  belongs_to :collaboration, foreign_key: :collaboration_id, class_name: "Artist", inverse_of: :members
end

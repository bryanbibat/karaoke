class AddBadgeInfoToKaraokeMachine < ActiveRecord::Migration
  def change
    add_column :karaoke_machines, :mark_text, :string
    add_column :karaoke_machines, :mark_class, :string
  end
end

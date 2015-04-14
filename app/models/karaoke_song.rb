class KaraokeSong < ActiveRecord::Base
  belongs_to :song
  belongs_to :karaoke_machine
end

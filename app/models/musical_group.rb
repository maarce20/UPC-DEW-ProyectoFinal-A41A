class MusicalGroup < ActiveRecord::Base
  belongs_to :music_style
  attr_accessible :name , :music_style_id
end

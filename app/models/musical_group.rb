class MusicalGroup < ActiveRecord::Base
  belongs_to :music_style
  attr_accessible :name
end

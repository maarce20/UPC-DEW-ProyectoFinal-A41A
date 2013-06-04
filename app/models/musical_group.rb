class MusicalGroup < ActiveRecord::Base
 	attr_accessible :name, :music_style_id, :user_ids
 	belongs_to :music_style
  	has_many :user_musical_groups
  	has_many :users, :through => :user_musical_groups
end

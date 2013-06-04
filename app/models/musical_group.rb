class MusicalGroup < ActiveRecord::Base
  belongs_to :music_style
  has_many :user_musical_groups
  has_many :users, :through => :user_musical_groups
end

class MusicStyle < ActiveRecord::Base
  attr_accessible :name
  has_many :musical_groups
end

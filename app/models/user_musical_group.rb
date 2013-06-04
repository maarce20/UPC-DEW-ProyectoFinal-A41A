class UserMusicalGroup < ActiveRecord::Base
  attr_accessible :musical_group_id, :user_id
  belongs_to :musical_group
  belongs_to :user
end

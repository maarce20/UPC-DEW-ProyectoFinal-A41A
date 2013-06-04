class User < ActiveRecord::Base
  attr_accessible :email, :name_user, :number_document, :password, :primary_last_name, :second_last_name, :sex, :type_document, :type_person
  has_many :user_musical_groups
  has_many :musical_groups, :through => :user_musical_groups
end

class User < ActiveRecord::Base
  attr_accessible :email, :name_user, :number_document, :password, :primary_last_name, :second_last_name, :sex, :type_document, :type_person
end

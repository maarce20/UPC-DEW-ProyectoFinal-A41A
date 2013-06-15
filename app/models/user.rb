class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :name_user, :number_document, :password, :primary_last_name, :second_last_name, :sex, :type_document, :type_person, :gender_id, :email_confirmation, :password_confirmation
  has_many :user_musical_groups
  has_many :comments
  belongs_to :concert
  belongs_to :gender
  has_many :musical_groups, :through => :user_musical_groups
	
  validates :email, :presence => {:message => "Correo no puede estar en blanco"},:confirmation => {:message => "Correo no coincide con la confirmacion"},:uniqueness => {:message => "Usuario ya existe"}
  validates :password, :presence => {:message => "Contrase&ntilde;a no puede estar en blanco"},:confirmation => {:message => "Contrase&ntilde;a no coincide con la confirmacion"}
  validates :number_document,:uniqueness => {:message => "El numero de documento ya existe"}

end

class MusicalGroup < ActiveRecord::Base
 	attr_accessible :name, :music_style_id, :user_ids
 	belongs_to :music_style
  	has_many :user_musical_groups
  	has_many :users, :through => :user_musical_groups

  	#Validaciones
  	validates 	:name, :presence => {:message => "El nombre no puede estar en blanco."},
  				:uniqueness => {:message => "Grupo musical ya existe."}

  	validates 	:music_style_id, :presence => {:message => "Debe elegir un estilo musical."}
  	validates 	:user_ids, :presence => {:message => "Debe elegir al menos un miembro para el grupo."}
end

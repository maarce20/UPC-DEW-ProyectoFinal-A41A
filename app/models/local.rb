class Local < ActiveRecord::Base
  attr_accessible :address, :district, :gmaps, :latitude, :longitude, :name, :phone
  acts_as_gmappable

  validates :name, :presence => {:message => "El nombre no puede estar en blanco"},:uniqueness => {:message => "Local ya existe"}
  validates :address, :presence => {:message => "Direccion no puede estar en blanco"}
  #validates :district,:uniqueness => {:message => "Seleccione un Distrito"}


def gmaps4rails_address
$global_variable = 'Lima'
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{address}, #{district}, #{$global_variable}"
end
end

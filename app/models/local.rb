class Local < ActiveRecord::Base
  attr_accessible :address, :district, :gmaps, :latitude, :longitude, :name, :phone
  acts_as_gmappable

def gmaps4rails_address
$global_variable = 'Lima'
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{address}, #{district}, #{$global_variable}"
end
end

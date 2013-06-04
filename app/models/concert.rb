class Concert < ActiveRecord::Base
  belongs_to :musical_group
  belongs_to :local
  belongs_to :user
  attr_accessible :fec_conc, :fecha, :hora_fin, :hora_ini
end

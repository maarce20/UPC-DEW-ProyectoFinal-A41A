class Concert < ActiveRecord::Base
	
  belongs_to :musical_group
  belongs_to :local
  belongs_to :user
  attr_accessible :musical_group_id, :local_id, :user_id, :fec_conc, :hora_fin, :hora_ini


  validates_presence_of :musical_group, :on => :create
  validates_presence_of :local, :on => :create
  validates_presence_of :user, :on => :create



end

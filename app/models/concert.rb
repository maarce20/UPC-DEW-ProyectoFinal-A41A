class Concert < ActiveRecord::Base
	
  belongs_to :musical_group
  belongs_to :local
  belongs_to :user
    attr_accessible :musical_group_id, :local_id, :user_id, :fec_conc, :hora_fin, :hora_ini, :name, :photo, :details

  #Validates
  validates_presence_of :musical_group, :on => :create
  validates_presence_of :local, :on => :create
  validates_presence_of :user, :on => :create

  FOTOS = File.join Rails.root, 'public', 'photo_store'
  after_save :guardar_foto

  UNRANSACKABLE_ATTRIBUTES = ["id", "hora_ini", "hora_fin", "musical_group_id", "local_id", "user_id", 
                              "created_at", "updated_at", "extension"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end

  def photo=(file_data)
  	unless file_data.blank?
  		@file_data = file_data
  		self.extension = file_data.original_filename.split('.').last.downcase
  		
  	end
  end
  def photo_filename
  		File.join FOTOS, "#{id}.#{extension}"
  end
  def photo_path
  	"/photo_store/#{id}.#{extension}"
  end

  private

  def guardar_foto
  	if @file_data
  		FileUtils.mkdir_p FOTOS
  		File.open(photo_filename, 'wb') do |f|
  			f.write(@file_data.read)
  		end
  		@file_data = nil
  	end
  end

end

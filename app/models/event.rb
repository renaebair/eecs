class Event < ActiveRecord::Base
	mount_uploader :image, EventUploader
	
	scope :published, where(:published => true)
end

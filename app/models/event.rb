class Event < ActiveRecord::Base
	mount_uploader :attachment, EventUploader
	
	scope :published, where(:published => true)
end

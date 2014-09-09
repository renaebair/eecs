class Event < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	scope :published, where(:published => true)
end

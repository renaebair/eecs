class Newsletter < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	
	scope :published, where(:published => true)

	has_many :attachments, as: :attachable
	belongs_to :admin_user
	accepts_nested_attributes_for :attachments, allow_destroy: true

	def images
    attachments.map{|x| x if x.file.image?}.compact
  end

  def files
    attachments.map{|x| x if x.file.file?}.compact
  end
end

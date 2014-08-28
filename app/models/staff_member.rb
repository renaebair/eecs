class StaffMember < ActiveRecord::Base
	mount_uploader :image, ImageUploader

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
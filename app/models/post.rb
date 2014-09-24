class Post < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	belongs_to :admin_user

  def author
    return 'Anonymous' unless admin_user
    admin_user.full_name
  end
end

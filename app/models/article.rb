class Article < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
end

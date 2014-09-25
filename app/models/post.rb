class Post < ActiveRecord::Base
  has_many :attachments, as: :attachable
	belongs_to :admin_user

  accepts_nested_attributes_for :attachments, allow_destroy: true

  def author
    return 'Anonymous' unless admin_user
    admin_user.full_name
  end

  def images
    attachments.map{|x| x if x.file.image?}.compact
  end

  def files
    attachments.map{|x| x if x.file.file?}.compact
  end

end

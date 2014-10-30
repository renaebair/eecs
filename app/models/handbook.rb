class Handbook < ActiveRecord::Base
  has_many :attachments, as: :attachable
	belongs_to :admin_user

  accepts_nested_attributes_for :attachments, allow_destroy: true

  def files
    attachments.map{|x| x if x.file.file?}.compact
  end

end

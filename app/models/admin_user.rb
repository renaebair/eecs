class AdminUser < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  scope :staff, where(:staff_member => true)

  make_permalink :full_name    

  def to_param
    permalink
  end

  def uuid
  	"USER#{id}"
  end

  def full_name
  	return uuid unless first_name || last_name
  	[first_name, last_name].join(" ")
  end

end

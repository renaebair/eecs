class AdminUser < ActiveRecord::Base
	mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  scope :staff, where(:staff_member => true)

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end

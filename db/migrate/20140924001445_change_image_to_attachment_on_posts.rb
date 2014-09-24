class ChangeImageToAttachmentOnPosts < ActiveRecord::Migration
  def change
  	rename_column :posts, :image, :attachment
  end
end

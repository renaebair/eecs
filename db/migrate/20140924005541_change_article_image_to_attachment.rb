class ChangeArticleImageToAttachment < ActiveRecord::Migration
  def change
  	rename_column :articles, :image, :attachment
  end
end

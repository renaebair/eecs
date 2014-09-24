class ChangePostTitleType < ActiveRecord::Migration
  def change
  	change_column :posts, :title, :string
  end
end

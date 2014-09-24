class ChangeEventImageToAttachment < ActiveRecord::Migration
  def change
  	rename_column :events, :image, :attachment
  end
end

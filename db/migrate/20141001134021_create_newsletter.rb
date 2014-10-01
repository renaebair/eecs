class CreateNewsletter < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
    	t.string :title
    	t.string :image
    	t.boolean :published, :default => true
    end
  end
end

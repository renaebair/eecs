class CreateHandbook < ActiveRecord::Migration
  def change
    create_table :handbooks do |t|
    	t.string :file
    	t.string :title
    	t.boolean :published, :default => true
    end
  end
end

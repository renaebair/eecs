class CreateParentQuotes < ActiveRecord::Migration
  def change
    create_table :parent_quotes do |t|
    	t.string :parent_name
    	t.text :body
    end
  end
end

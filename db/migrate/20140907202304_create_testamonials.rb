class CreateTestamonials < ActiveRecord::Migration
  def change
    create_table :testamonials do |t|
      t.string :name
      t.text :body
      t.timestamps
    end
  end
end

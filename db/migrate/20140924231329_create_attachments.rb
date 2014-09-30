class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
       t.references :attachable, :polymorphic => true
       t.string :file
       t.timestamps
    end
  end
end

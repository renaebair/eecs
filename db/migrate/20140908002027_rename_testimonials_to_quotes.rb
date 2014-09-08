class RenameTestimonialsToQuotes < ActiveRecord::Migration
  def change
    rename_table :testimonials, :quotes
  end
end

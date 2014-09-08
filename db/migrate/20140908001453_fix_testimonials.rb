class FixTestimonials < ActiveRecord::Migration
  def change
    rename_table :testamonials, :testimonials
  end
end

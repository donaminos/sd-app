class AddIndexToCourse < ActiveRecord::Migration
  def change
  	add_index :courses, :slug
  end
end

class AddVideoIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :video_id, :string
  end
end

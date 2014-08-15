class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.integer :order
      t.string :video_id
      t.integer :course_id

      t.timestamps
    end
  end
end

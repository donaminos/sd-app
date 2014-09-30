class ChangeIntroductionTypeInCourses < ActiveRecord::Migration
  def change
  	change_column :courses, :introduction, :text
  end
end

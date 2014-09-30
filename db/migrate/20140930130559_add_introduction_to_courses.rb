class AddIntroductionToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :introduction, :string
  end
end

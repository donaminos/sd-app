class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :code
      t.string :name
      t.text :description
      t.integer :position

      t.timestamps
    end
  end
end

class AddSlugToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :slug, :string
    add_index :levels, :slug, unique: true
  end
end

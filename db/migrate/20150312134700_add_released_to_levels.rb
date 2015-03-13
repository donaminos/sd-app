class AddReleasedToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :released, :boolean
  end
end

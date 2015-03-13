class AddAttachmentImageToLevels < ActiveRecord::Migration
  def self.up
    change_table :levels do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :levels, :image
  end
end

class AddAttachmentCloudpicToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :cloudpic
    end
  end

  def self.down
    remove_attachment :posts, :cloudpic
  end
end

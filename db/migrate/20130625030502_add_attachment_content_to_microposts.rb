class AddAttachmentContentToMicroposts < ActiveRecord::Migration
  def self.up
    change_table :microposts do |t|
      t.attachment :content
    end
  end

  def self.down
    drop_attached_file :microposts, :content
  end
end

class AddAttachmentImageToCheeses < ActiveRecord::Migration
  def self.up
    change_table :cheeses do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :cheeses, :image
  end
end

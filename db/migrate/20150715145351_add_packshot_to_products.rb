class AddPackshotToProducts < ActiveRecord::Migration
  def self.up
    add_attachment :products, :packshot
  end

  def self.down
    remove_attachment :products, :packshot
  end
end

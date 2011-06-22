class RemoveOldRegistry < ActiveRecord::Migration
  def self.up
    Page.find(8).destroy
  end

  def self.down
  end
end

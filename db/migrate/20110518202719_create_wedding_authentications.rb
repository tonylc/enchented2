class CreateWeddingAuthentications < ActiveRecord::Migration
  def self.up
    create_table :wedding_authentications do |t|
      t.integer :wedding_id
      t.integer :service_provider
      t.string :login

      t.timestamps
    end
  end

  def self.down
    drop_table :wedding_authentications
  end
end

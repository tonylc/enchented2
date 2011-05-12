class CreateRsvpOptions < ActiveRecord::Migration
  def self.up
    create_table :rsvp_options do |t|
      t.integer :rsvp_question_id
      t.text :option
    end
  end

  def self.down
    drop_table :rsvp_options
  end
end

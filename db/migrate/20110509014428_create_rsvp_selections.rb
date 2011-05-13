class CreateRsvpSelections < ActiveRecord::Migration
  def self.up
    create_table :rsvp_selections do |t|
      t.integer :rsvp_id
      t.integer :rsvp_question_id
      t.integer :rsvp_option_id
      t.string :answer
    end
  end

  def self.down
    drop_table :rsvp_selections
  end
end

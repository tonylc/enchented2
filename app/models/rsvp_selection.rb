class RsvpSelection < ActiveRecord::Base
  belongs_to :rsvp_option
  belongs_to :user
end

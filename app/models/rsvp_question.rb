class RsvpQuestion < ActiveRecord::Base
  belongs_to :wedding
  has_many :rsvp_options

  TYPE_RADIO = 0
  TYPE_SELECT = 1
  TYPE_TEXT_FIELD = 2
  TYPE_TEXT_AREA = 3
  
  def has_options?
    [TYPE_RADIO, TYPE_SELECT].include?(html_form_type)
  end
end

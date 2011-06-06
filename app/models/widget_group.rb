class WidgetGroup < ActiveRecord::Base

  has_many :page_widgets, :order => "verticle_order ASC"

  TYPE_REGULAR = 0
  TYPE_TABBED = 1
  TYPE_ACCORDION = 2
end

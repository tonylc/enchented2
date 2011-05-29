class WidgetGroup < ActiveRecord::Base

  has_many :page_widgets, :order => "verticle_order ASC"
end

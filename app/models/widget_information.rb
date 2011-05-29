class WidgetInformation < ActiveRecord::Base
  belongs_to :description_content_text,
  :class_name => "ContentText"
  
  has_many :widget_contents, :as => :widget
end

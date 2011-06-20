class WidgetInformation < ActiveRecord::Base
  belongs_to :description_content_text,
  :class_name => "ContentText"
  
  has_many :widget_contents, :as => :widget
  
  def widget_content_count(type)
    @widget_content_count ||= {}
    @widget_content_count[type] ||= widget_contents_by_type(type).count    
  end

  def widget_contents_by_type(type)
    widget_contents.where(["content_type = ?", type.to_s.classify])
  end
end

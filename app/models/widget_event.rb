class WidgetEvent < ActiveRecord::Base
  belongs_to :location

  has_many :widget_contents, :as => :widget
  
  def to_json(options = {})
    options[:include] = :location
    
    super(options)
  end

  def widget_content_count(type)
    widget_contents_by_type(type).count
  end

  def widget_contents_by_type(type)
    widget_contents.where(["content_type = ?", type.to_s.classify])
  end
end

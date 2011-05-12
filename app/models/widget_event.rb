class WidgetEvent < ActiveRecord::Base
  belongs_to :location

  def to_json(options = {})
    options[:include] = :location
    
    super(options)
  end
end

module PagesHelper

  def render_widget(widget)
    case widget.class.to_s
    when 'WidgetText'
      render :partial => 'widget_text', :object => widget
    when 'WidgetEvent'
      render :partial => 'widget_event', :object => widget
    end
  end
  
end

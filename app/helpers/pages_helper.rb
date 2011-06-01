module PagesHelper

  def render_widget(widget) 
    case widget.class.to_s
    when 'WidgetText'
      render :partial => 'widget_text', :object => widget
    when 'WidgetEvent'
      render :partial => 'widget_event_single', :object => widget
    when 'WidgetGallery'
      render :partial => 'widget_gallery', :object => widget
    when 'WidgetAlbum'
      render :partial => 'widget_album', :object => widget
    end
 end

  def render_grouped_widget(widget_group)

    case widget_group.first.widget.class.to_s
    when 'WidgetText'

    when 'WidgetEvent'
      render :partial => 'widget_event_grouped', :locals => {:widget_group => widget_group}
    when 'WidgetGallery'

    when 'WidgetAlbum'

    end

  end
  
  def widget_dom_id(widget)
    case widget.class.to_s
    when 'WidgetText'

    when 'WidgetEvent'
      widget.title.underscore.gsub(" ", "_").gsub("&amp;", "and")
    when 'WidgetGallery'

    when 'WidgetAlbum'

    end
  end

  def widget_title(widget)
    case widget.class.to_s
    when 'WidgetText'

    when 'WidgetEvent'
      widget.title
    when 'WidgetGallery'

    when 'WidgetAlbum'

    end
  end
  
end

module PagesHelper

  def render_page_widget(page_widget)
    case page_widget.widget.class.to_s
    when 'WidgetText'
      render :partial => 'widget_text', :object => page_widget.widget
    when 'WidgetEvent'
      render :partial => 'widget_event', :object => page_widget.widget
    when 'WidgetGallery'
      render :partial => 'widget_gallery', :object => page_widget.widget
    when 'WidgetAlbum'
      render :partial => 'widget_album', :object => page_widget.widget
    end
 end

  def render_page_widget_group(page_widget)
    @rendered_widget_groups ||= []

    return nil if @rendered_widget_groups.include?(page_widget.widget_group_id)
    
    @rendered_widget_groups << page_widget.widget_group_id
    
    render :partial => 'widget_group', :object => page_widget.widget_group
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

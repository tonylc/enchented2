module PagesHelper
  def render_page_widget(page_widget, group_type = nil)
    render :partial => page_widget.widget.class.to_s.underscore, :object => page_widget.widget, :locals => {:group_type => group_type}
  end

  def render_page_widget_group(page_widget)
    @rendered_widget_groups ||= []

    return nil if @rendered_widget_groups.include?(page_widget.widget_group_id)
    
    @rendered_widget_groups << page_widget.widget_group_id
    
    render :partial => 'widget_group', :object => page_widget.widget_group
  end

  def render_content(content, index = nil)
    render :partial => content.class.to_s.underscore, :object => content, :locals => {:index => index}
  end

  def widget_dom_id(widget)
    tab_name(widget).underscore.gsub(" ", "_").gsub("&amp;", "and")    
  end

  def tab_name(widget)
    (widget.respond_to?(:tab_name) && !widget.tab_name.blank?) ? widget.tab_name : widget.title
  end

  def widget_group_type_class(widget_group)
    case widget_group.type_id
    when WidgetGroup::TYPE_REGULAR
      ""
    when WidgetGroup::TYPE_TABBED
      " tabbed"
    when WidgetGroup::TYPE_ACCORDION
      " accordion"
    end
  end

  def widget_group_class(widget_group)
    case widget_group.page_widgets.first.widget_type
    when "WidgetEvent"
      "events"
    when "WidgetInformation"
      "info"
    end
  end

  def content_link_href(content_link)
    if content_link.is_internal
      if content_link.url == "rsvps"
        custom_new_rsvp_path
      else
        custom_page_path(page)
      end
    else
      content_link.url
    end
  end

  def location_index(index)
    @@index_mapping ||= %w{A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
    
    raw("<em>#{@@index_mapping[index]}.</em>") unless index.nil?
  end
end

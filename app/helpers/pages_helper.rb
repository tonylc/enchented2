module PagesHelper
  def render_page_widget(page_widget)
    render :partial => page_widget.widget.class.to_s.underscore, :object => page_widget.widget
  end

  def render_page_widget_group(page_widget)
    @rendered_widget_groups ||= []

    return nil if @rendered_widget_groups.include?(page_widget.widget_group_id)
    
    @rendered_widget_groups << page_widget.widget_group_id
    
    render :partial => 'widget_group', :object => page_widget.widget_group
  end

  def render_content(content)
    "Widget Content Goes Here for #{content.class.to_s} #{content.id}"
  end

  def widget_dom_id(widget)
    tab_name(widget).underscore.gsub(" ", "_").gsub("&amp;", "and")    
  end

  def tab_name(widget)
    (widget.respond_to?(:tab_name) && !widget.tab_name.blank?) ? widget.tab_name : widget.title
  end
end

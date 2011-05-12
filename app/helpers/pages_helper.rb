module PagesHelper

  def render_widget(widget)
    case widget.class.to_s
    when 'WidgetText'
      render :partial => 'widget_text', :object => widget
    when 'WidgetEvent'
      render :partial => 'widget_event', :object => widget
    end
  end
  
  def render_rsvp_form_element(rsvp_question)
    case rsvp_question.html_form_type
    when RsvpQuestion::TYPE_RADIO
      render :partial => 'rsvp_radio', :locals => {:rsvp_question => rsvp_question}
    when RsvpQuestion::TYPE_SELECT
      render :partial => 'rsvp_select', :locals => {:rsvp_question => rsvp_question}
    when RsvpQuestion::TYPE_TEXT_FIELD
      render :partial => 'rsvp_text_field', :locals => {:rsvp_question => rsvp_question}
    when RsvpQuestion::TYPE_TEXT_AREA
      render :partial => 'rsvp_text_area', :locals => {:rsvp_question => rsvp_question}
    end
  end

end

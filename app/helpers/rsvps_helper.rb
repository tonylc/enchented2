module RsvpsHelper

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
    when RsvpQuestion::TYPE_TEXT
      render :partial => 'rsvp_text', :locals => {:rsvp_question => rsvp_question}
    end
  end

  def error_for(object, attribute)
    if object.errors.on(attribute)
      " class='error'"
    end
  end

  def error_for_selection(question)
    " class='error'" if !@selection_errors.blank? && @selection_errors.include?(question.id)
  end

  def error_on_selection?(question)
    !@selection_errors.blank? && @selection_errors.include?(question.id)
  end
end

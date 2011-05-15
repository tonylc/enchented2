class RsvpsController < ApplicationController

  def new
    @rsvp = Rsvp.new(:wedding_id => @wedding.id, :can_attend => false)
  end

  def create
    params[:rsvp][:can_attend] =  params[:rsvp][:can_attend] == "true" ? true : false
    
    @rsvp = Rsvp.new(params[:rsvp])
    @rsvp.send(:perform_validations) #so that we can get errors on rsvp if there are response errors

    if validate_rsvp_selections && @rsvp.save
      unless params[:rsvp_questions].blank?
        params[:rsvp_questions].each do |rsvp_question_id, response|
          unless response.blank?
            rsvp_question = RsvpQuestion.find(rsvp_question_id)
            if rsvp_question.has_options?
              @rsvp.rsvp_selections << RsvpSelection.create(:rsvp_question_id => rsvp_question_id, :rsvp_option_id => response)
            else
              @rsvp.rsvp_selections << RsvpSelection.create(:rsvp_question_id => rsvp_question_id, :answer => response)
            end
          end
        end
      end
      
      flash[:notice] = "thanks for submitting your response."
    else
      
      p @rsvp.inspect
      flash[:error] = "Sorry, your RSVP wasn't accepted"
      render :action => 'new'
    end
  end

  private

  def validate_rsvp_selections
    
    if params[:rsvp][:can_attend]
      @selection_errors = []
      @wedding.rsvp_questions.each do |rsvp_question|
        @selection_errors << rsvp_question.id if rsvp_question.is_required && params[:rsvp_questions][rsvp_question.id.to_s].blank?
      end
      
      return @selection_errors.blank?
    else

      return true
    end
  end
end

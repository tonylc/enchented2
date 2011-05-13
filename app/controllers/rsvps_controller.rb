class RsvpsController < ApplicationController

  def show
    @rsvp = Rsvp.new(:wedding_id => @wedding.id)
  end

  def create
    params[:rsvp][:can_attend] =  params[:rsvp][:can_attend] == "true" ? true : false
    
    @rsvp = Rsvp.new(params[:rsvp])
    
    if validate_rsvp_answers && @rsvp.save
      
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
      
      flash[:notice] = "Thanks, we'll see you soon!"
      redirect_to :action => 'show', :id => @wedding
     
    else

      flash[:error] = "Please make sure you fill out all of the required fields"
      render :action => 'show'
    end
  end

  private

  def validate_rsvp_answers
    
    if params[:rsvp][:can_attend]
      @wedding.rsvp_questions.each do |rsvp_question|
        return false  if rsvp_question.is_required && params[:rsvp_questions][rsvp_question.id.to_s].blank?
      end
      
      return true
    else

      return true
    end
  end
end

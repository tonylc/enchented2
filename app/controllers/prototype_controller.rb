class PrototypeController < ApplicationController

  def display

    if params[:user].blank?
       params[:user] = 'guest'
    end
    
    render '/prototype/' + params[:page], :layout => "prototype"

  end

end
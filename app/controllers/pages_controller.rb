class PagesController < ApplicationController
  
  def show
    @page = params[:page_name].blank? ? Page.find(params[:id]) : Page.find_by_wedding_id_and_url_name(@wedding.id, params[:page_name])
    
    respond_to do |format|

      format.html{
        
      }
      format.json {
        render :json => page.to_json(:except => [:is_locked], 
                                     :include => {:page_widgets => 
                                       {:include => {:widget => 
                                           {:include => :location}
                                         }
                                       }
                                     }
                                     )
      }
    end
  end

end

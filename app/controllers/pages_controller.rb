class PagesController < ApplicationController
  
  def show
    if @custom_domain
      @page = params[:page_name].blank? ? Page.find_home_page(@wedding) : Page.find_by_wedding_id_and_url_name(@wedding.id, params[:page_name])
    else
      @page = Page.find(params[:id])
    end

    
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

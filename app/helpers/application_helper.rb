module ApplicationHelper

  require 'content.rb'
  require 'logic.rb'
  require 'widgets.rb'

  include ContentHelper
  include LogicHelper
  include WidgetHelper

# Details
# ---------------------------------------------------------------------------

  def context
    params[:context]
  end

  def page
    params[:page]
  end

  def previous
    request.request_uri.split('/').pop().capitalize;
  end
  
  def user
    params[:user]
  end

  def widget
    self.action_name
  end

# Heading Maker
# ---------------------------------------------------------------------------

  def heading(options={})

    if couple? || trial?
      raw('<h3 class="handle">' + options[:verb] + ' ' + options[:content] + '</h3>')    
    else
      raw('<h3>' + options[:verb] + ' ' + options[:content] + '</h3>')    
    end
  end

# Link Maker
# ---------------------------------------------------------------------------

  def go(options = {})

    if options[:to].match(/\s/)
      @page = options[:to].downcase.split(/\s/).pop()
    else
      @page = options[:to].downcase
    end

    @link = '<a href="/prototype/' + @page + '/' + user + '">' + options[:to] + '</a>'

    if @page == page
      raw('<strong>' + @link + '</strong>')
    else
      raw(@link)
    end
  end

# Gathers libraries specified in views, filters out duplicates
# ---------------------------------------------------------------------------

  def adapters(*js)
    @adapters ||= []
    @adapters |= js
  end

  def libraries(*js)
    @libraries ||= []
    @libraries |= js
  end

  def scripts(*js)
    @scripts ||= []
    @scripts |= js
  end


# 
# ---------------------------------------------------------------------------

  def wedding_title(wedding)
    "#{wedding.name} &infin; #{nice_date(wedding.date)} &infin; #{nice_location(wedding.location)}"
  end
  
  def nice_date(datetime)
    datetime.strftime("%B %d, %Y")
  end

  def nice_location(location)
    "#{location.city.titleize}, #{location.state.name.titleize}"
  end

  def add_to_js(*js)
    (@page_js ||= []) << js
  end

  def add_to_css(*css)
    (@page_css ||= []) << css
  end

  def current_page?(page)
    self.controller_name == "pages" && page.id.to_s == params[:id]
  end

  def rsvp_page?
    self.controller_name == "rsvps"
  end

end

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

  def nice_date_with_day(datetime)
    datetime.strftime("%A, %B %d, %Y")
  end

  def short_date(datetime)
    datetime.strftime("%Y-%m-%d")
  end

  def nice_time(datetime)
    t = datetime.strftime("%l")
    t += datetime.strftime(":%M") unless datetime.strftime(":%M") == ":00"
    t += datetime.strftime("%p").downcase
  end

  def nice_address(location)
    adr = ""
    adr += location.address1 unless location.address1.blank?
    adr += " #{location.address2}" unless location.address2.blank?
    adr += ", #{location.city.titleize} #{location.state.short_name.upcase}"
  end

  def nice_location(location)
    "#{location.city.titleize}, #{location.state.name.titleize}"
  end

  def nice_city(location)
    "#{location.city.titleize}, #{location.state.name.titleize} #{location.postal_code}"
  end

  def add_to_js(*js)
    (@page_js ||= []) << js
  end

  def add_to_css(*css)
    (@page_css ||= []) << css
  end

  def current_page?(page)
    self.controller_name == "pages" && (page.id.to_s == params[:id] || page.url_name == params[:page_name] || (page.is_home && params[:page_name].blank? && params[:id].blank?))
  end

  def rsvp_page?
    self.controller_name == "rsvps"
  end

  def custom_new_rsvp_path
    if @custom_domain
      new_rsvp_path
    else
      url_for(:controller => 'rsvps', :action => 'new', :wedding_id => @wedding.id)
    end
  end

  def custom_page_path(page)
    # haxing sorry
    if page.is_static
      return '/' + page.url_name
    end
    if @custom_domain
      readable_page_url(:page_name => page.url_name, :only_path => true)
    else
      page_path(page)
    end
  end

  def page_class_name
    rsvp_page? ? "rsvp" : (@page.blank? ? nil : @page.class_name)
  end
end

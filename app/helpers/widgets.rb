# Renders widgets directly via URL (ExampleController), or combined on prototype pages
# The following helpers name each widget and define default options for displaying examples

module WidgetHelper

  ### Used by the methods that follow 
  def render_widget
    
      if self.controller_name == 'example'
        render 'ui/' + caller[0][/`([^']*)'/, 1] + '/_' + @options[:view]
      else
        render 'ui/' + caller[0][/`([^']*)'/, 1] + '/' + @options[:view]
      end  
  
  end

  ### Generates widget classes that correspond to option configurations
  def options

    @classes = String.new()

    @options.each_pair do |option, value|

      @option = option.to_s
  
      if value != false && !@classes.match(value)
      
        if value == true || value.is_a?(Integer) || value.is_a?(Array) || value.to_s =~ /\s/
          @classes.insert(-1, option.to_s + ' ')
        else
          @classes.insert(-1, value.to_s + ' ')
        end
      end

    end

    @classes.chop
  end


# Editor Widget
# ---------------------------------------------------------------------------

  def editor(options = {})

    if options.blank?
      @options = { :edit => "text", :view => "inline", :placeholder => "Placeholder Goes Here" }
    else
      @options = options
    end
  
    render_widget
  end


# Form Widget
# ---------------------------------------------------------------------------

  def form(options = {})

    if options.blank?
      @options = { :template => params[:context] }
    else
      @options = options
    end
    
    @options[:view] = @options[:template]
    
    render_widget  
  end


# Guide Widget
# ---------------------------------------------------------------------------

  def guide(options = {})

    if options.blank?
      @options = { :view => "display", :heading => "Heading Goes Here", :message => "Message Goes Here" }
      else
      @options = options
    end
    
    @options[:view] = 'display'
  
    case @options[:to]
    when 'welcome'
  
      @options[:heading] = 'Welcome to your wedding website!';
      @options[:message] = "This is the first page your guests will see. If you'd like, you can greet them with some words, a photo, and maybe even a video.";
  
    end
  
    render_widget
  end


# List Widget
# ---------------------------------------------------------------------------

  def list(options = {})

    @context = params[:context]
    @view = params[:view]
  
    if options.blank?
      @options = { :view => "thumbnails", :items => 18, :favorite => true, :order => true, :remove => true, :play => true, :select => true }
    else
      @options = options
    end
  
    render_widget
  end


# Player Widget
# ---------------------------------------------------------------------------

  def player(options = {})

    if options.blank?
      @options = { :play => 'video', :view => "inline", :clip => "jpN60KKBAjc", :source => "youtube" }
    elsif options.blank? && params[:context] == 'song'
      @options = { :play => 'song', :view => "inline", :clip => "3335558" }
    else
      @options = options
    end
    
    render_widget
  end


# Prompt Widget
# ---------------------------------------------------------------------------

  def prompt(options = {})

    if options.blank?
      @options = { :for => params[:context], :view => "add" }
    else
      @options = options
    end
    
    case @options[:for]
      when 'video'
         @options[:input] = 'clipboard'
      when 'song'
         @options[:input] = 'search'
    end
    
    render_widget 
  end


end
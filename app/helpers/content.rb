# Consolidates dummy content and separates from views for easy changes

module ContentHelper

  def wedding

    @wedding = { :date => "September 15, 2011", :location => "Kyoto, Japan", :bride => "Tomoko", :groom => "Billy" }
    @wedding

  end

# Dummy Content
# ---------------------------------------------------------------------------

  def content(options = {})

    @context = options[:kind] ? options[:kind] : context
    @album = options[:album]
    @dummies = Array.new
    @content = Array.new
    
    case @context
    when 'albums'
  
      @dummies << ["Billy in Japan","",["1.jpg","2.jpg","4.jpg","10.jpg"],"Facebook","32152"]
      @dummies << ["Osaka, Japan","",["3.jpg","14.jpg","15.jpg","16.jpg"],"Flickr","574155"]
      @dummies << ["Engagement Announcement","",["8.jpg","9.jpg","18.jpg"],"Facebook","36623"]
      @dummies << ["Staying Fit Together","",["12.jpg","20.jpg","21.jpg"],"Flickr","811423"]
      @dummies << ["Billy's New Show","",["22.jpg","23.jpg","24.jpg","25.jpg"],"Flickr","915342"]
  
    when 'photos'
  
      @dummies << ["Billy","","1.jpg","facebook","169541259743946"]
      @dummies << ["Tomoko","","2.jpg","facebook","169541259743949"]
      @dummies << ["Osaka, Japan","","3.jpg","flickr","5000318961"]
      @dummies << ["Pump It!","","4.jpg","facebook","169541259743946"]
      @dummies << ["Marika Blanks","","5.jpg","facebook","169541259743946"]
      @dummies << ["Love at First Sight","","6.jpg","facebook","169541259743946"]
      @dummies << ["Freddy","","7.jpg","facebook","169541259743946"]
      @dummies << ["Engagement Announcement","","8.jpg","facebook","169541259743946"]
      @dummies << ["Family Time!","","9.jpg","facebook","169541259743946"]
      @dummies << ["Quality Time","","10.jpg","facebook","169541259743946"]
      @dummies << ["Billy on TV","","11.jpg","facebook","169541259743946"]
      @dummies << ["Time to get down to business!","","12.jpg","facebook","169541259743946"]
      @dummies << ["Billy on TV","","13.jpg","facebook","5000318961"]
      @dummies << ["Osaka, Japan","","14.jpg","flickr","5000318961"]
      @dummies << ["Castle in Osaka, #1 contender for the ceremony","","15.jpg","flickr","5000318961"]
      @dummies << ["Decorations for the party","","16.jpg","flickr","169541259743946"]
      @dummies << ["Castle in Osaka, #1 contender for the ceremony","","17.jpg","flickr","5000318961"]
      @dummies << ["Our wedding invitation is as big as Billy!","","18.jpg","facebook","169541259743946"]
      @dummies << ["Tomoko hard at work for the perfect dress","","19.jpg","facebook","169541259743946"]
      @dummies << ["Billy must prove his worth to Tomoko's father","","20.jpg","facebook","169541259743946"]
      @dummies << ["Tough questions from the media","","21.jpg","facebook","169541259743946"]
      @dummies << ["Billy inspires the people!","","22.jpg","facebook","169541259743946"]
      @dummies << ["Billy learns Japanese through lobal induction","","23.jpg","facebook","169541259743946"]
      @dummies << ["Come to my wedding!","","24.jpg","facebook","169541259743946"]
      @dummies << ["1,000 Yen for everyone!!!","","25.jpg","facebook","169541259743946"]
  
    when 'songs'
  
      @dummies << ["Erotic City","Prince","placeholder.png","grooveshark","3335558"]
  
    when 'videos'
  
      @dummies << ["Fake Billy Blanks","","1.jpg","youtube","2x2zwKF8oYQ"]
      @dummies << ["Meeting Tomoko's Father","","2.jpg","youtube","qz1nU2szUVw"]
      @dummies << ["A Japanese Wedding Manual from Mr Torajiro","","3.jpg","vimeo","7875602"]
      @dummies << ["Squeeze It!","","4.jpg","youtube","f5g5bAoh7fg"]
      @dummies << ["Traditional Wedding","","5.jpg","vimeo","7532223"]
      @dummies << ["Fresh Season","","6.jpg","vimeo","12045752"]
      @dummies << ["Tomoko's Mom","","7.jpg","youtube","tfonaYeJzVY"]
      @dummies << ["This is Japan!","","8.jpg","vimeo","2721992"]
      @dummies << ["Tae Bo Japan","","9.jpg","youtube","_HaI_vrFUng"]
  
    end
  
    until @content.length == options[:items]
      @dummies.each_with_index do |item, index|
  
      ### Used for Albums view of the List widget only, returns only 4 content items for each album preview
      if (@album) && (@album != item[4])
        next
      end
  
      ### Maps array positions to more meaningful parameter names
      @content << { :name => item[0], :tagline => item[1], :thumbnail => item[2], :source => item[3], :id => item[4] }
  
      if @content.length == options[:items]
        break
      end
  
      end
    end

    @content
  end

end
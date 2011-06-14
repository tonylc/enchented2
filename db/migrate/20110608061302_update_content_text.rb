class UpdateContentText < ActiveRecord::Migration
  def self.up
    page = Page.find_by_url_name("welcome")
    page.update_attribute(:show_title, false)

    page = Page.find_by_url_name("invitation")
    page.update_attribute(:show_title, false)

    text = WidgetText.find(9)
    text.text = <<TEXT
<h1>How did it all start?</h1>  
<h3>Established January 18, 2008</h3> 
<img src="http://farm6.static.flickr.com/5264/5732027366_e80bfae1d3_m.jpg" alt="Central Park" title="Central Park" /> 
<p>PB&amp;J. It started over a discussion of the show, <a href="http://en.wikipedia.org/wiki/The_Office_(U.S._TV_series)">The Office</a>. I loved Pam and Caroline loved Jim. As we shared with one another what we liked about each character, I started to realize all the little things about Caroline that I have never noticed before.</p> 
<p>To this day, our phone numbers and email nicknames are still listed as Jim Halpert and Pam Beasley. But as our relationship has evolved, we're actually a lot more like <a href="http://en.wikipedia.org/wiki/Modern_Family">Claire and Phil</a>. Maybe over time, we'll end up like <a href="http://en.wikipedia.org/wiki/Married..._with_Children">Peggy and Al</a>.</p> 
<p>-Tony</p> 
TEXT

    text.save
  end

  def self.down
    page = Page.find_by_url_name("welcome")
    page.update_attribute(:show_title, true)

    page = Page.find_by_url_name("invitation")
    page.update_attribute(:show_title, true)
    
    text = WidgetText.find(9)
    text.text = <<TEXT
<h2>How did it all start?</h2><h3>Established January 18, 2008</h3><img src='http://farm6.static.flickr.com/5264/5732027366_e80bfae1d3_m.jpg'/><p>PB&J. It started over a discussion of the show, <a href='http://en.wikipedia.org/wiki/The_Office_(U.S._TV_series)'>The Office</a>.  I loved Pam and Caroline loved Jim. As we shared with one another what we liked about each character, I started to realize all the little things about Caroline that I have never noticed before.</p><p>To this day, our phone numbers and email nicknames are still listed as Jim Halpert and Pam Beasley.  But as our relationship has evolved, we're actually a lot more like <a href='http://en.wikipedia.org/wiki/Modern_Family'>Claire and Phil</a>.  Maybe over time, we'll end up like <a href='http://en.wikipedia.org/wiki/Married..._with_Children'>Peggy and Al</a>.</p><p>-Tony</p> 
TEXT
  end
end

class AddAboutUs < ActiveRecord::Migration
  def self.up
    page = Page.find_by_title('About Us')
    w10 = WidgetText.create(:text => "<h2>How did it all start?</h2><h3>Established January 18, 2008</h3><p>PB&J. It started over a discussion of the show, <a href=\"http://en.wikipedia.org/wiki/The_Office_(U.S._TV_series)\">The Office</a>.  I loved Pam and Caroline loved Jim. As we shared with one another what we liked about each character, I started to realize all the little things about Caroline that I have never noticed before.</p><p>To this day, our phone numbers and email nicknames are still listed as Jim Halpert and Pam Beasley.  But as our relationship has evolved, we’re actually a lot more like <a href=\"http://en.wikipedia.org/wiki/Modern_Family\">Claire and Phil</a>.  Maybe over time, we’ll end up like <a href=\"http://en.wikipedia.org/wiki/Married..._with_Children\">Peggy and Al</a>.</p><p>-Tony</p>")
    PageWidget.create(:page_id => page.id, :widget => w10, :verticle_order => 1)
  end

  def self.down
  end
end

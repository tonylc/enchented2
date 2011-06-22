# -*- coding: utf-8 -*-
class AddAustinSeeDoPage < ActiveRecord::Migration
  def self.up
    p = Page.create(:url_name => "things_to_do", :wedding_id => 1, :title => "Things To Do", :navigation_order => 9, :class_name => "things_to_do", :show_page => true, :show_title => false)

    w = WidgetText.create(:text => <<TEXT
<h1>Food</h1>
<ul style="list-style:none;margin-left:-33px;">
<li><a href="http://www.rudys.com/" target=_blank>Rudy’s BBQ</a></li>
<li><a href="http://www.chuys.com/" target=_blank>Chuy’s (Tex-Mex)</a></li>
<li><a href="http://www.hulahut.com/" target=_blank>Hula Hut</a></li>
<li><a href="http://www.cactushill.com/TCP/home.htm" target=_blank>Texas Chili Parlor</a></li>
<li><a href="http://www.trudys.com/" target=_blank>Trudy’s</a></li>
<li><a href="http://www.juaninamillion.com/" target=_blank>Juan in a Million</a></li>
<li><a href="http://www.amysicecreams.com/" target=_blank>Amy’s Ice Cream</a></li>
<li><a href="http://www.yelp.com/biz/momoko-austin" target=_blank>Momoko’s</a></li>
</ul>

<h1>To Do/See</h1>
<ul style="list-style:none;margin-left:-33px;">
<li><a href="http://www.thestoryoftexas.com/" target=_blank>Bob Bullock Texas State History Museum</a></li>
<li><a href="http://www.yelp.com/biz/bats-under-the-congress-avenue-bridge-austin" target=_blank>Congress Avenue Bridge / Austin Bats</a></li>
<li><a href="http://www.yelp.com/biz/texas-state-capitol-austin#query:State%20Capitol%20Building" target=_blank>State Capitol Building</a></li>
<li><a href="http://www.blantonmuseum.org/" target=_blank>Blanton Museum of Art</a></li>
<li><a href="http://www.laketravis.com/" target=_blank>Lake Travis</a></li>
<li><a href="http://guadaluperiver.com/site/" target=_blank>Guadalupe River</a></li>
<li><a href="http://www.texastubes.com/" target=_blank>Comal River</a></li>
<li><a href="http://www.austinexplorer.com/Locations/ShowLocation.aspx?LocationID=1791" target=_blank>Mount Bonnell</a></li>
</ul>

<h1>Shopping</h1>
<ul style="list-style:none;margin-left:-33px;">
<li><a href="http://www.thedomainaustin.com/" target=_blank>The Domain Mall</a></li>
<li><a href="http://www.premiumoutlets.com/outlets/outlet.asp?id=73" target=_blank>Round Rock Premium Outlets</a></li>
<li><a href="http://www.downtownaustin.com/directory/Retail/" target=_blank>Downtown Austin Shops & Boutiques</a></li>
</ul>

TEXT
                          )
    PageWidget.create(:page_id => p.id, :widget => w, :verticle_order => 1)
    
  end

  def self.down
  end
end

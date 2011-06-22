class AddRegistryPage < ActiveRecord::Migration
  def self.up
    p = Page.create(:url_name => "registry",
                    :wedding_id => 1,
                    :title => "Registry",
                    :navigation_order => 10,
                    :show_title => false,
                    :show_page => true)

    w1 = WidgetText.create(:title => "Registry",
                           :text => <<TEXT
<p>As many of y'all may know, we will be spending the first year of our marriage traveling and living abroad!  While we appreciate the gesture of a wedding present, we kindly request cash gifts to help fund our future adventures (and minimize our storage rental!)</p>
TEXT
)
    
    PageWidget.create(:page_id => p.id, :widget => w1, :verticle_order => 1)
  end

  def self.down
  end
end

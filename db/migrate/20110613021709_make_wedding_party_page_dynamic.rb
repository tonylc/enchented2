class MakeWeddingPartyPageDynamic < ActiveRecord::Migration
  def self.up
    p = Page.find_by_url_name('wedding_party')
    p.update_attribute(:is_static, false)

    w1 = WidgetText.create(:text => <<TEXT
 <h1>Wedding Party</h1> 
 
                    <h3>Ladies</h3> 
 
                    <img src="http://farm4.static.flickr.com/3506/5735088674_f97baf2c67_m.jpg" alt="Collin Kim" title="Collin Kim" /> 
                    <h4><span style="color: #da8b91">Collin Kim</span> &mdash; Maid of Honor</h4> 
                    <p>Even though you&rsquo;d rather play basketball with the boys and only wore black/white/grey for the longest time, we somehow managed to become friends and complement each other perfectly. I miss making those drives from Coppell to Plano to hang out at your house or get Java & Cha. I will never forget your obsession with Freddie Prinze Jr., you serenading me with your parents&rsquo; karaoke machine, and the one night at Kinko&rsquo;s that we documented so well. You are my sisterhood and no matter how much time, space, or life comes between us, you will forever be my best friend. Thanks in advance for wearing the pink dress!</p> 
 
                    <img src="http://farm3.static.flickr.com/2054/5735089800_6aa033104e_m.jpg" alt="Kathryn Chin" title="Kathryn Chin" /> 
                    <h4><span style="color: #da8b91">Kathryn Chin</span> &mdash; Bridesmaid</h4> 
                    <p>As a fellow girlfriend and founding member of RGFD (Real Girlfriends of Divis), Kathryn and I quickly became friends over our love for trashy TV and Hello Kitty. There is never a dull moment when you&rsquo;re with Kat: texting with 80% emoji, taking shots from a smuggled &ldquo;water bottle&rdquo;, and exchanging Nordstrom Anniversary Sale finds. Even all the way from the UAE, you make it easy to stay in touch via chat, email, text, Facebook, and Skype-you&rsquo;re a well connected lady :) Your positive energy is contagious and I know there will not be a shortage of goofy faces in my future wedding album!</p> 
 
                    <img src="http://farm6.static.flickr.com/5307/5734647231_4ac0f49351_m.jpg" alt="Rachel Wei" title="Rachel Wei" /> 
                    <h4><span style="color: #da8b91">Rachel Wei</span> &mdash; Bridesmaid</h4> 
                    <p>Loving mom, awesome wife, organizing meetings, and still manages to look good? To most people, there aren&rsquo;t enough hours in the day to do what you do. But on top of all this, you&rsquo;ve been the sweetest, most thoughtful person from the moment we met. Our days of wishful thinking about Tony and I getting married, moving down to the south bay, and having kids so you can babysit feels like it was just yesterday! Someday Tony & Jerry will understand why Whole Foods and ShopBop are a necessity, not an option, but until they do we have each other :)</p> 
 
                    <img src="http://farm6.static.flickr.com/5023/5735196618_267a738154_m.jpg" alt="Stephanie Le" title="Stephanie Le" /> 
                    <h4><span style="color: #da8b91">Stephanie Le</span> &mdash; Bridesmaid</h4> 
                    <p>Is butter a carb? What day is it? Is your muffin buttered? Steph is the only person I can trust asking such important questions to. I met my princess sister through our friend Matt who thought we&rsquo;d get along. Obviously he didn&rsquo;t realize he was in the presence of royalty. Since then we&rsquo;ve cooked many dinners for Shanko, blacked out at Maroon 5 concerts, cried over SATC, played countless games of deluxe Scrabble and laughed hysterically at our favorite luxury blog. You were my first girlfriend out here and there&rsquo;s no one else I&rsquo;d rather have watch over me on CalTrain ;)</p> 
 
                    <hr /> 
 
                    <h4>Gentlemen</h4> 
 
                    <img src="http://farm4.static.flickr.com/3268/5734565419_eebc422e14_m.jpg" alt="Lijen Tan" title="Lijen Tan" /> 
                    <h4><span style="color: #da8b91">Lijen Tan</span> &mdash; Best Man</h4> 
                    <p>Some people refer to us as twins. As only children, we always had a good understanding of each other as we tend to share a lot of similar traits. Since moving up to SF, we have accomplished a lot of activities together including running a marathon, boxing in an exhibition matchup, building (non-) ridable road bikes, biking down from SF to LA, running a startup, and additional extra-curricular activities. We're usually the last ones to sleep in our house as we ponder about life's many questions.</p> 
 
                    <img src="http://farm6.static.flickr.com/5147/5735114936_f005e522a0_m.jpg" alt="Chris Nelson" title="Chris Nelson" /> 
                    <h4><span style="color: #da8b91">Chris Nelson</span> &mdash; Groomsman</h4> 
                    <p>As one of my first friends since moving to Cupertino, Nelly has always been a constant in my life. We&rsquo;ve grown up together, sang in choir together, and spent many days after school playing video games and watching TV. I&rsquo;ve probably taken more naps in his bed (no homo) than probably all of his previous girlfriends combined. He also introduced me to one of my favorite video games of all time &mdash;<br />Final Fantasy 6.</p> 
 
                    <img src="http://farm3.static.flickr.com/2401/5735114564_102dc48a43_m.jpg" alt="James Lee" title="James Lee" /> 
                    <h4><span style="color: #da8b91">James Lee</span> &mdash; Groomsman</h4> 
                    <p>Its been 36+ months since Yumguy, the artist formerly known as James Lee, has cut his hair. I use to think he was a little slow. It&rsquo;s not that he&rsquo;s unintelligent, but he takes his sweet time when contemplating over something (warning: do not wait in line behind him if you are ordering food). But surprisingly, over the 3 years we lived as roommates, I realized that he is one of the most insightful people I know. We&rsquo;ve had a lot of deep conversations over the years and we seem to have a long running inside joke that will never end.</p> 
 
                    <img src="http://farm3.static.flickr.com/2751/5734564899_367116debc_m.jpg" alt="Norman Hsieh" title="Norman Hsieh" /> 
                    <h4><span style="color: #da8b91">Norman Hsieh</span> &mdash; Groomsman</h4> 
                    <p>Faster than a speeding bullet, more powerful than a locomotive, and able to leap tall buildings in a single bound, Norman is one of my best friends since high school. I think he's been there for every drunk night that I have fallen on my face, and then proceeded to take care of me as I return back to consciousness. In the past he has snuck into my house and folded my laundry, force fed me Oreos against my will, and spent many drunken nights wrestling me.</p> 
 
                    <hr /> 
 
                    <h4>VIP</h4> 
 
                    <img src="http://farm4.static.flickr.com/3274/5735199842_429c661efe_m.jpg" alt="Tina Tsou-Nelson" title="Tina Tsou-Nelson" /> 
                    <h4><span style="color: #da8b91">Tina Tsou-Nelson</span> &mdash; Wedding Day Coordinator</h4> 
                    <p>Tina is someone who&rsquo;s always down for having a good time-in costume or not! This August, she&rsquo;ll be celebrating her 2-year wedding anniversary with her husband Chris. After planning such an amazing event of her own, we knew there was only one person we&rsquo;d trust with our special day.</p> 
 
                    <img src="http://farm6.static.flickr.com/5221/5744337994_c05665eba7_m.jpg" alt="Brian Ngo" title="Brian Ngo" /> 
                    <h4><span style="color: #da8b91">Brian Ngo</span> &mdash; Officiant</h4> 
                    <p>When I think of Brian, I think of our first spiritual conversation about Jesus when we were really drunk in Vegas shortly after turning 21. Since then it has been nothing but WWJD and philosophical sports debates. Our discussions have started to evolve over the years, and we're excited to have such a spiritual man wed us.</p> 
 
                    <img src="http://farm6.static.flickr.com/5069/5735115196_8fa4e7e4e6_m.jpg" alt="Steven Huang" title="Steven Huang" /> 
                    <h4><span style="color: #da8b91">Steven Huang</span> &mdash; Emcee</h4> 
                    <p>I think what Steven taught me best is the art of slacking and still getting the job done. Probably one of the most intelligent people that I know, Steven has an aura of confidence about him and we think he's the perfect guy to get the party started.</p> 
 
                    <hr /> 
 
                    <h4>Ring Bearers</h4> 
 
                    <p>Our 2 favorite little toddlers from the Weiside Underground Corporation.</p> 
 
                    <figure> 
                        <img src="http://farm4.static.flickr.com/3151/5734675093_4e0f95c122_m.jpg" alt="Jeremy Wei" title="Jeremy Wei" /> 
                        <figcaption style="color: #da8b91"><strong>Jeremy Wei</strong></figcaption> 
                    </figure> 
 
                    <figure> 
                        <img src="http://farm4.static.flickr.com/3014/5734675161_1a11353181_m.jpg" alt="Tyler Wei" title="Tyler Wei" /> 
                        <figcaption style="color: #da8b91"><strong>Tyler Wei</strong></figcaption> 
                    </figure> 
TEXT
)

    PageWidget.create(:page_id => p.id, :widget => w1, :verticle_order => 1)    
  end

  def self.down
  end
end

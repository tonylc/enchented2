# Love for Design Wedding Websites

This repo contains an interactive prototype and user interface [widgets](/LoveForDesign/websites/tree/master/app/views/ui) for the Love for Design wedding website service. While it is constructed with Ruby on Rails (3.0 / Ruby 1.8.7) views, it does not currently read or write any data, instead using static content. Ruby's ERB templating features have been used to ease prototyping, minimize duplication, and implement Sass (see Themes).

**Gem Dependencies:**

 - [haml](http://haml-lang.com)
 
**Browser Support:**

The prototype and widgets contained herein are only supported in the following browsers currently:

 - [Apple Safari 5.0](http://apple.com/safari)
 - [Google Chrome](http://google.com/chrome)


UI Widget Examples
--------------------------------------------------------------------------------

The Love for Design user interface is composed of reusable widgets that may be mixed and matched in pages throughout the prototype. Each widget is largely self-contained, with dependencies in other components only where some duplication can avoid unnecessary complexity. An example of each widget may be viewed using a URL in this style, with alternate views specified as available:

    /example/list/photos/albums
    /example/list/photos
    /example/list/songs/playlist
    /example/list/videos


Prototype
--------------------------------------------------------------------------------

Widgets are added to pages with configurable helpers (`widgets.rb`). Any forms may be filled out as desired, but entered data will have no effect on resulting pages, and is only validated clientside occassionally. Note that while some areas feature working API feeds, no actual data is stored.

**User Roles:**

Three user roles have been defined, that may be added to the end of prototype URLs to trigger different configurations of widgets, etc. to simulate the experience of users in these roles:

 - new
 - couple
 - guest
 
**Example URLs:**

    /prototype/welcome/new
    /prototype/welcome/couple
    /prototype/welcome/guest


Themes
--------------------------------------------------------------------------------

The [Sass](http://sass-lang.com) CSS extension has been implemented to provide a foundation for the ability to apply visual themes to wedding websites. Widget stylesheets refer to a theme stylesheet for any colors, fonts, and other visual attributes. Sass is also used to minimize duplication in stylesheets with the use of [Mixins](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html#mixins) and [Nesting](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html#css_extensions).
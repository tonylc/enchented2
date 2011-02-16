# UI Widgets


Editor
--------------------------------------------------------------------------------

A customized implementation of the [TinyMCE](http://www.tinymce.org) WYSIWYG editor, the text editor starts with a `<textarea>` or static area of text that may easily be initialized into a TinyMCE editable instance. Users are given limited formatting abilities in order to maintain the integrity of the design, but do have some flexibility, including the ability to use designer-selected accent colors appropriate for the current them.


**Examples:**

 - [Text Editor](http://eric.local/example/editor/text)


Form
--------------------------------------------------------------------------------

Typical forms containing text fields, dropdowns, and checkboxes are stored centrally as templates that may be rendered into views. Controls may be grouped and separated using headings. Special controls such as date pickers and HTML5 geolocation-enabled location fields are also available, but must be enabled in the view's Javascript, which also controls any toggling behavior on a view-by-view basis.

Validation is similarly available, for simple checks of required data as well as pattern matching against specially typed fields, such as those for URLs.

**Examples:**

 - [New Customer](http://eric.local/example/form/new)


List
--------------------------------------------------------------------------------

Looping through series of data, a list is generated tailored to the kind of data. Lists fill a core navigational need and also provide some basic functionality when configured, such as selection, deletion, favoriting, ordering, and inline players.

**Examples:**

 - [Albums](http://eric.local/example/list/photos/albums)
 - [Photos](http://eric.local/example/list/photos)
 - [Song Playlist](http://eric.local/example/list/songs/playlist)
 - [Videos](http://eric.local/example/list/videos)


Player
--------------------------------------------------------------------------------

The presentation for embedded players from YouTube, Vimeo, and Grooveshark are provided by this widget, including both inline and fixed/floating players. Each player uses the `adapter` utility function to identify video sources and embed the correct player code.

Eventually this widget shall be extended to use the YouTube Player and Vimeo Moogaloop APIs to extend visual customization to controls.

**Examples:**

 - [Music Player](http://eric.local/example/player/music)
 - [Floating Music Player](http://eric.local/example/player/music/floating)
 - [Video Player](http://eric.local/example/player/video)


Prompt
--------------------------------------------------------------------------------

Used for collecting data via two possible methods: clipboard paste and form entry. API queries may also be submitted, with result browsing provided inline. 

**Examples:**

 - [Add a Song](http://eric.local/example/prompt/song)
 - [Add a Video](http://eric.local/example/prompt/video)
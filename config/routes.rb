Prototype::Application.routes.draw do
  
  #standard request urls
  resources :pages, :only => [:show]
  resources :rsvps, :only => [:new, :create]

  #nice urls
  match ':page_name', :controller => "pages", :action => "show", :via => :get, :as => 'readable_page'
  
  #home
  root :to => "pages", :controller => "pages", :action => "show", :via => :get
  
  match "example/:action(/:context)(/:view)", :controller => "example"
  match "proxy", :controller => "proxy"
  match "prototype/:page(/:user)", :controller => "prototype", :action => "display"
  match "ui/:action/:widget(/:view)", :controller => "example"

  #root :to => "prototype", :controller => "prototype", :page => "start", :user => "new", :action => "display"

end

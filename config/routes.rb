Prototype::Application.routes.draw do

  #match 'wedding_party' => 'static#wedding_party'
  #standard request urls
  resources :pages, :only => [:show]
  resources :rsvps, :only => [:new, :create]

  #nice urls
  match ':page_name', :controller => "pages", :action => "show", :via => :get, :as => 'readable_page'

  match "example/:action(/:context)(/:view)", :controller => "example"
  match "proxy", :controller => "proxy"
  match "prototype/:page(/:user)", :controller => "prototype", :action => "display"
  match "ui/:action/:widget(/:view)", :controller => "example"

  #home
  root :to => "pages#show", :id => 1, :via => :get
end

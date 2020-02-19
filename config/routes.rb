Rails.application.routes.draw do
  root 'static_notes#home' #tells the app where to go when you first launch the site and static_notes is the controller #home is the method

  get '/about', to: 'static_notes#about'

  resources :notes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

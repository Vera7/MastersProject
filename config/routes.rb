Rails.application.routes.draw do
  resources :test1s
  resources :csvs
  root :to => "pages#about" #added to try to get csvs/new to work as getting error message stating 'uninitialized contsant contoller'

  get 'pages2/input'

  get 'pages2/data'

  get 'pages2/variables'

  get 'pages2/analysis'

  get 'pages2/l'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/data'

  root 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

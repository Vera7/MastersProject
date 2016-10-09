Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/contact'

  root 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

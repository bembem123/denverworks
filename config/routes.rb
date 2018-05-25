Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#welcome'
  get 'about', to: 'pages#about'
  get 'package', to: 'pages#package'
  get 'portfolio', to: 'pages#portfolio'

  #resources :contacts, only:[:new, :create]

  get 'basics', to: 'basics#new'
  post 'basics', to: 'basics#create'

  get 'standards', to: 'standards#inquire'
  post 'standards', to: 'standards#success'

  get 'packages', to: 'packages#new'
  post 'packages', to: 'packages#create'

  get 'contacts', to: 'contacts#index'
  post 'contacts', to: 'contacts#sent'

end

Rails.application.routes.draw do
  root 'welcome#index', as: 'home'

  get '/xantham_gum', to: 'xanthan_gum#index'

  get '/discuss', to: 'discuss#index'

  get '/topic', to: 'topic#index'

  get '/topic/show', to: 'topic#show'

  resources :users

end

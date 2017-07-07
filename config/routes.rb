Rails.application.routes.draw do
  root 'welcome#index', as: 'home'

  get '/xantham_gum', to: 'xanthan_gum#index'

  # get '/topics', to: 'topics#index'
  #
  # get '/subject', to: 'subjects#index'
  #
  # get '/subject/show', to: 'subjects#show'

  resources :topics, only: [:index]  do
    resources :subjects
  end

  resources :subjects do
    resources :replies
  end

  resources :users
  
end

Rails.application.routes.draw do
  root 'welcome#index', as: 'home'

  # get '/topics', to: 'topics#index'
  #
  # get '/subject', to: 'subjects#index'
  #
  # get '/subject/show', to: 'subjects#show'

  get '/thiamine_mononitrate', to: 'ingredients#thiamine_mononitrate'

  get '/azodicarbonamide', to: 'ingredients#azodicarbonamide'

  get '/sodium_nitrate', to: 'ingredients#sodium_nitrate'

  get '/butylated_hydroxytoluene', to: 'ingredients#butylated_hydroxytoluene'

    get '/xanthan_gum', to: 'ingredients#xanthan_gum'

  resources :topics, only: [:index]  do
    resources :subjects
  end

  resources :subjects do
    resources :replies
  end

  resources :users

  resources :search

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  get "/auth/twitter", as: :sign_in_with_twitter
  get "/auth/:provider/callback" => "callbacks#index"

end

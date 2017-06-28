Rails.application.routes.draw do
  root 'welcome#index', as: 'home'

  get '/xantham_gum', to: 'xanthan_gum#index'
end

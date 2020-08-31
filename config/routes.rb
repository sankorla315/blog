Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do 
    resources :comments
  end

  jsonapi_resources :rentals
  
  root 'welcome#index'
end

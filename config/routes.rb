Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do 
    resources :comments
  end

  jsonapi_resources :rental
  
  root 'welcome#index'
end

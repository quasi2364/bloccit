Rails.application.routes.draw do
  resources :advertisements

	resources :posts

  get 'welcome/about'

  get "about" => 'welcome#about'

  root to: 'welcome#index'
end

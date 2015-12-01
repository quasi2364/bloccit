Rails.application.routes.draw do
  resources :questions

	resources :posts

  get 'welcome/about'

  get "about" => 'welcome#about'

  root to: 'welcome#index'
end

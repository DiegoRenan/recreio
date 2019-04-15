Rails.application.routes.draw do
  	resources :busies
  	resources :checks
  	resources :contracts
	root 'static_pages#home'
  	get 'static_pages/home'
  	get 'static_pages/contact'
  	get 'static_pages/about'
  	resources :contract_models
end

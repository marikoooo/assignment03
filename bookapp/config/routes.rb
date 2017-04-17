Rails.application.routes.draw do
	resources :books
	resources :comments
	root 'books#top'
end

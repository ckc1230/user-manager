Rails.application.routes.draw do
	# namespace :api do 
	# 	resources :users
	# end

	resources :users

	post "/login" => "users#login"
end

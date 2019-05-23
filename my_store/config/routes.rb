Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
  	get :check,on: :member
  end
  get ':controller(/:action(/:id))(.:format)'
end

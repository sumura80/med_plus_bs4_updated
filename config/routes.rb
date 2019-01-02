Rails.application.routes.draw do
  get 'about' ,to:'pages#about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do 
  	resources :likes, only: [:create, :destroy]
  	resources :comments do
	  	resources :votes, only: [:create, :destroy]
	  end
  end


  root 'categories#index'
  
  get 'categories/dogs' ,to: 'categories#dogs'
  get 'categories/cats' ,to: 'categories#cats'
  get 'categories/rabbits' ,to: 'categories#rabbits'

  #userのshowページ作成URL
  resources :users, only:[:show, :edit, :update]
  root 'posts#index'
end

Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  resources :users, only: [:show, :edit]
  
  devise_for :users
  # devise_for :users は、devise を使用する際に URL として users を含むことを示しています
  # get 'homes/top'
  root to: "homes#top"
  
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  
  get 'homes/about', as: 'about'
  # get "/homes/about" => "homes#about", as: "about"
  
  # root to:はサイトのルートページを決める記述
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  # devise_for :users は、devise を使用する際に URL として users を含むことを示しています
  # get 'homes/top'
  root to: "homes#top"
  get 'homes/about', as: 'about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:show, :edit, :update]
  # get "/homes/about" => "homes#about", as: "about"
  
  # root to:はサイトのルートページを決める記述
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

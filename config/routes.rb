Rails.application.routes.draw do
  # get 'homes/top'
  root to: "homes#top"
  # root to:はサイトのルートページを決める記述
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

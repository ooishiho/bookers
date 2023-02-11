Rails.application.routes.draw do
  resources :books
  get '/' => 'home#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#どの投稿データを表示するか判別するための記述
end

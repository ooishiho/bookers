Rails.application.routes.draw do
  get 'books/new'
  get 'books/show'
  get 'books' => 'books#index'
  get 'books/edit'
  root 'homes#top'
  post 'books'=>'books#cerate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#どの投稿データを表示するか判別するための記述
get 'lists/:id' => 'lists#show'
end

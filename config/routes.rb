Rails.application.routes.draw do
  get 'books/new'
  get 'books/show'
  get 'books' => 'books#index'
  get 'books/edit'
  root 'homes#top'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

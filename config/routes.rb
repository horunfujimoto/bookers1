Rails.application.routes.draw do
  get '/' => 'homes#top' #トップページ
  get '/books' => 'books#index'  #新規投稿と投稿一覧表はここ
  post '/books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book' #投稿詳細はここ
  get 'books/:id/edit' => 'books#edit', as: 'edit_book' #投稿編集はここ
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

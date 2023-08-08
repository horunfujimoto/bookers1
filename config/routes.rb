Rails.application.routes.draw do
  get '/' => 'homes#top' #トップページ
  get '/books' => 'books#index'  #新規投稿と投稿一覧表はここ
  post '/books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book' #投稿詳細はここ
  get 'books/edit' #投稿編集はここ

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

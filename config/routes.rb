Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'todolists/new'
  get 'top' => 'homes#top'
  #URL「.../top」というURLにgetメソッドでリクエストした時、homesコントローラーのtopアクションが呼び出される、という設定。
  post 'todolists' => 'todolists#create' 
  #URL「.../todolists」というURLにpostメソッドでリクエストした時、todolistsコントローラーのcreateアクションが呼び出される。投稿送信
  get 'todolists' => 'todolists#index'
  get 'todolists' => 'todolists#index'
  #「.../todolists」というURLにpostメソッドでリクエストした時、todolistsコントローラーのindexアクションが呼び出される。一覧表示。
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  #「.../todolists/:1とか/:2とか」URLにgetメソッドでリクエストした時、todolistsコントローラのshowアクションが呼び出される。詳細表示。
  #「as:」でこのルートに「todolist」という名前をつけた。
end
